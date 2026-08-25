# # Realización del análisis OMI

# Práctica 2.1.
# Install some packages:
install_github("andrewljackson/siar@master")
devtools::install_github("KarasiewiczStephane/WitOMI", force = TRUE)

packages <- c(
  "vegan3d",
  "knitr",
  "subniche",
  "siar",
  "devtools",
  "adegraphics",
  "ade4",
  "vegan",
  "FactoMineR",
  "factoextra",
  "corrplot",
  "ggcorrplot",
  "ggplot2"
)

packages <- c(
  "vegan3d",
  "knitr",
  "subniche",
  "siar",
  "devtools",
  "adegraphics",
  "ade4",
  "vegan",
  "FactoMineR",
  "factoextra",
  "corrplot",
  "ggcorrplot",
  "ggplot2",
  "tidyr",
  "dplyr")

to_install <- packages[!packages %in% installed.packages()[, "Package"]]

if(length(to_install) > 0) {
  install.packages(to_install, dependencies = TRUE)
}

# Cargar bibliotecas
library(vegan3d)
library(knitr)
library(subniche)
library(siar)
library(devtools)
library(adegraphics)
library(ade4)
library(vegan)
library(FactoMineR)
library(factoextra)
library(corrplot)
library(ggcorrplot)
library(ade4)
library(ggplot2)
library(tidyr)
library(dplyr)

# Set our working directory
setwd("C:/Users/vicen/Documents/cursos_y_seminarios/pcb_2027_1/Unidad_4")

# Getting the data
# data set includes fish species occurrence along with environmental variables (Karasiewicz et al., 2017).
drome

# Vars:
# DSOU: distance to the source. 
# DISCHARGE: mean annual discharge. 
# LMIN: lowest monthly discharge. 
# WIDTH: mean stream width. 
# SLOPE.
# ALTITUDE.

#Rename locations
names_loc <- c()
rownames(drome$fish)
for (i in seq_along(rownames(drome$fish))) {
  name_loc <- paste0("loc_",i)
  names_loc <- c(names_loc, name_loc)
}

rownames(drome$fish) <- names_loc
rownames(drome$env) <- names_loc

#Check
drome

# Normalizar los datos
drome_normalized <- scale(drome$env[,-1])
head(drome_normalized)

# Correlación de variables
corr_matrix <- cor(drome_normalized)
ggcorrplot(corr_matrix,
           hc.order = TRUE,
           type = "lower",
           lab = TRUE)


# Para describir la variación ambiental
#PCA de variables ambientales
pca_drome <- princomp(drome_normalized)
summary(pca_drome)

#Contribución de cada componente
fviz_eig(pca_drome, addlabels = TRUE)

#Contribución de cada variable a cada componente
var <- get_pca_var(pca_drome)
var
corrplot(var$cos2, is.corr=FALSE)
var$cos2
corrplot(var$cor, is.corr=FALSE)
var$cor


# Color by cos2 values: quality on the factor map
fviz_pca_var(pca_drome, col.var = "cos2",
             gradient.cols = c("#00AFBB", "#E7B800", "#FC4E07"), 
             repel = TRUE # Avoid text overlapping
)

# Habiendo descrito las vars ambientales, vamos a decribir el sistema. 
pca_drome <- dudi.pca(drome$env[,-1], scale = TRUE, scannf = FALSE)
scatter(pca_drome)

#Summary plot 
niche_description <- niche(pca_drome, drome$fish, scann = FALSE)
niche_description

g10 <- plot(niche_description)

####

# Más detallado

# ============================================================
# 3. Biplot de localidades y variables ambientales
# ============================================================
# Localidades = puntos
# Variables ambientales = vectores

# Extract coordinates from the niche object
species_coords <- niche_description$li  # Species centroids on niche axes
vars_coords <- niche_description$c1  # Coordenadas (loadings) de las variables ambientales
locs_coords <- niche_description$ls

#Localidades y variables
# 2. Extraer coordenadas de localidades (sites) y variables (vars)
colnames(locs_coords) <- c("Axis1", "Axis2")

# 3. Crear el gráfico combinado (Biplot)
ggplot() +
  # Dibujar las localidades como puntos azules
  geom_point(data = locs_coords, aes(x = Axis1, y = Axis2), 
             color = "#3498db", size = 2.5, alpha = 0.8) +
  geom_text(data = locs_coords, aes(x = Axis1, y = Axis2 + 0.08, label = rownames(locs_coords)), 
            size = 2.5, color = "#2c3e50") +
  
  # Dibujar las variables ambientales como flechas rojas
  geom_segment(data = vars_coords, aes(x = 0, y = 0, xend = CS1, yend = CS2), 
               arrow = arrow(length = unit(0.2, "cm")), color = "#e74c3c", linewidth = 0.8) +
  geom_text(data = vars_coords, aes(x = CS1 * 3.3, y = CS2 * 3.3, label = rownames(vars_coords)), 
            color = "#c0392b", fontface = "bold", size = 4) +
  
  # Líneas de origen y estilo
  geom_vline(xintercept = 0, linetype = "dashed", color = "gray80") +
  geom_hline(yintercept = 0, linetype = "dashed", color = "gray80") +
  labs(title = "Biplot de Localidades y Variables Ambientales (Espacio del Nicho)",
       x = "Eje del Nicho 1", y = "Eje del Nicho 2") +
  theme_minimal()


# ============================================================
# 2. Análisis OMI
# ============================================================
# Calcula la posición ecológica de cada especie dentro del
# espacio ambiental definido por el PCA.

env_vectors <- niche_description$c1

ggplot() +
  # Draw environmental variable vectors
  geom_segment(data = env_vectors, aes(x = 0, y = 0, xend = CS1*3, yend = CS2*3), 
               arrow = arrow(length = unit(0.2, "cm")), color = "red") +
  geom_text(data = env_vectors, aes(x = CS1*3.2, y = CS2*3.2, label = rownames(env_vectors)), 
            color = "red", fontface = "bold") +
  # Draw species niche centroids
  geom_point(data = species_coords, aes(x = Axis1, y = Axis2), color = "blue", size = 3) +
  geom_text(data = species_coords, aes(x = Axis1, y = Axis2 + 0.1, label = rownames(species_coords)), 
            vjust = 0, color = "blue") +
  # Formatting
  geom_vline(xintercept = 0, linetype = "dashed", color = "gray") +
  geom_hline(yintercept = 0, linetype = "dashed", color = "gray") +
  labs(title = "Species Niches (OMI Analysis)", x = "Axis 1", y = "Axis 2") +
  theme_minimal()


# ============================================================
# 5. Amplitud del nicho
# ============================================================
params <- niche.param(niche_description)

species_plot <- cbind(
  niche_description$li,
  Tol = params[, "Tol"]
)

ggplot(species_plot,
       aes(Axis1, Axis2, size = Tol)) +
  geom_point(alpha = 0.8) +
  geom_text(aes(label = rownames(species_plot)),
            nudge_y = 0.1) +
  scale_size_continuous(name = "Tolerancia")

# Tol baja → especialista ambiental.
# Tol alta → generalista ambiental.

# ============================================================
# 6. Parámetros del nicho
# ============================================================

kable(niche.param(niche_description))
# OMI       = marginalidad: Index of marginality, i.e., the average distance of species j to the uniform distribution. 
# Un valor alto de OMI se interpreta como una posición “marginal” del nicho. 
# Tol       = amplitud del nicho
# RTol      = variación no explicada: an index that helps to determine the reliability of a set of environmental conditions for the definition of the niche of species j.
# Inertia   = variabilidad total del nicho # # (1) Inertia of species j as the weighted sum of squared distances to the origin.

# Values to the right represent the corresponding percentages of variability.




# Actividades:
# 1.- Describe brevemente el trabajo de campo tendrías que hacer para obtener datos como los de la base drome. 
# 2.- Describe brevemente, en terminos de R, la base drome. 
# 3.- Qué especies muestran un reducido NB?
# 4.- Qué especies muestran un amplio NB?
# 5.- Qué especie(s) se comporta más distintamente al resto en términos de la posición del nicho?

