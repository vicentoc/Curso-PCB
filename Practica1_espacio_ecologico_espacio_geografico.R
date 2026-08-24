# ============================================================
# Práctica 1: Espacio geográfico y espacio ecológico
# ============================================================

# Load libraries

library(terra)
library(ggplot2)

# ============================================================
# Working directory
# ============================================================
getwd()

# ============================================================
# Read shapefiles
# ============================================================

shape_america <- vect("shapes_figura/America.shp")
moistforest_sa <- vect("shapes_figura/moistforest_ca2.shp")
moistforest_antillas <- vect("shapes_figura/moistforest_antillas.shp")
tropical_conifer <- vect("shapes_figura/tropical_coniferous_forest.shp")

# ============================================================
# Plot geographic space
# ============================================================

plot(shape_america, col = "gray")
plot(moistforest_antillas, col = "darkgreen", add = TRUE)
plot(moistforest_sa, col = "orange", add = TRUE)
plot(tropical_conifer, col = "lightblue", add = TRUE)

# ============================================================
# Load WorldClim variables
# ============================================================

wlclim_bios <- list.files(
  path = "wc_2_5",
  pattern = "\\.tif$",
  full.names = TRUE
)

wlclim_bios_stack <- rast(wlclim_bios)

# Select variables:
# bio1, bio4, bio5, bio6, bio13, bio14

wlclim_bios_stack_sub <- wlclim_bios_stack[[c(1, 4, 5, 6, 13, 14)]]

# Biovariables Worldclim
#BIO1 = Temperatura media anual
#BIO2 = Rango diurno medio (media de la diferencia mensual entre la temperatura máxima y la mínima)
#BIO3 = Isotermalidad (BIO2/BIO7) (×100)
#BIO4 = Estacionalidad de la temperatura (desviación estándar × 100)
#BIO5 = Temperatura máxima del mes más cálido
#BIO6 = Temperatura mínima del mes más frío
#BIO7 = Rango de temperatura anual (BIO5-BIO6)
#BIO8 = Temperatura media del trimestre más húmedo
#BIO9 = Temperatura media del trimestre más seco
#BIO10 = Temperatura media del trimestre más cálido
#BIO11 = Temperatura media del trimestre más frío
#BIO12 = Precipitación anual
#BIO13 = Precipitación del mes más lluvioso
#BIO14 = Precipitación del mes más seco
#BIO15 = Estacionalidad de la precipitación (coeficiente de variación)
#BIO16 = Precipitación del trimestre más húmedo
#BIO17 = Precipitación del trimestre más seco
#BIO18 = Precipitación del trimestre más cálido
#BIO19 = Precipitación del trimestre más frío

# ============================================================
# Crop and mask by biome
# ============================================================

moistforest_sa_stack <- mask(
  crop(wlclim_bios_stack_sub, moistforest_sa),
  moistforest_sa
)

moistforest_antillas_stack <- mask(
  crop(wlclim_bios_stack_sub, moistforest_antillas),
  moistforest_antillas
)

# ============================================================
# Extract environmental values
# ============================================================

moistforest_sa_extract <- as.data.frame(
  moistforest_sa_stack,
  xy = TRUE,
  na.rm = TRUE
)

moistforest_antillas_extract <- as.data.frame(
  moistforest_antillas_stack,
  xy = TRUE,
  na.rm = TRUE
)

# ============================================================
# Random sample (max 10,000 points)
# ============================================================

set.seed(123)

sample_df <- function(x, n = 10000) {
  if (nrow(x) <= n) {
    return(x)
  }
  x[sample(nrow(x), n), ]
}

moistforest_sa_extract_table <-
  sample_df(moistforest_sa_extract)

moistforest_antillas_extract_table <-
  sample_df(moistforest_antillas_extract)

# ============================================================
# Merge tables
# ============================================================

moistforest_sa_extract_table$id <- "Moist forest South America"

moistforest_antillas_extract_table$id <- "Moist forest Antilles"

table_ecos <- rbind(
  moistforest_sa_extract_table,
  moistforest_antillas_extract_table
)

# ============================================================
# Check variable names
# ============================================================

names(table_ecos)

# ============================================================
# Environmental space plot
# ============================================================

ggplot(
  table_ecos,
  aes(
    wc2.1_2.5m_bio_1,
    wc2.1_2.5m_bio_12,
    color = id,
    fill = id
  )
) +
  geom_point(
    size = 0.1,
    alpha = 0.2
  ) +
  stat_ellipse(
    geom = "polygon",
    level = 0.80,
    alpha = 0.2,
    linewidth = 1
  ) +
  theme_classic(base_size = 14) +
  labs(
    x = "Annual mean temperature (BIO1)",
    y = "Annual precipitation (BIO12)",
    color = "Biome",
    fill = "Biome"
  )


# Parte 2
library(dplyr)
library(factoextra)

# ============================================================
# SHAPES
# ============================================================

shapes_names <- c(
  "tropical_coniferous_forest",
  "temperate_coniferous_forest",
  "yp_dryforest",
  "montane_grassland_sa",
  "temperate_mixed_forest_2",
  "moistforest_ca2",
  "moistforest_antillas",
  "moistforest_yp",
  "moistforest_ca1",
  "dryforest_ca",
  "dryforest_sa",
  "dryforest_antillas"
)

shapes <- lapply(
  shapes_names,
  function(x) vect(paste0("shapes_figura/", x, ".shp"))
)

names(shapes) <- shapes_names
plot(shapes$tropical_coniferous_forest)
shape_america <- vect("shapes_figura/America.shp")

# ============================================================
# BIOCLIM
# ============================================================

bios <- list.files(
  "wc_2_5",
  pattern = "\\.tif$",
  full.names = TRUE
)

bios <- rast(bios)

# bio1 bio4 bio5 bio6 bio13 bio14

bios_sub <- bios[[c(1,4,5,6,13,14)]]

# ============================================================
# EXTRACTION
# ============================================================

sample_size <- 10000

ecos_list <- vector("list", length(shapes))

for(i in seq_along(shapes)) {
  
  cat("Processing:", names(shapes)[i], "\n")
  
  r <- mask(
    crop(bios_sub, shapes[[i]]),
    shapes[[i]]
  )
  
  df <- as.data.frame(
    r,
    xy = TRUE,
    na.rm = TRUE
  )
  
  if(nrow(df) > sample_size){
    df <- df[sample(nrow(df), sample_size), ]
  }
  
  df$id <- names(shapes)[i]
  
  ecos_list[[i]] <- df
}

table_ecos <- bind_rows(ecos_list)

# ============================================================
# PCA
# ============================================================

env_cols <- 3:8

pca_areas <- prcomp(
  table_ecos[, env_cols],
  scale. = TRUE
)

summary(pca_areas)

fviz_eig(pca_areas)

# ============================================================
# PCA SCORES
# ============================================================

scores <- as.data.frame(pca_areas$x)

scores$id <- table_ecos$id

# ============================================================
# COLORS
# ============================================================

iriscolors <- c(
  "skyblue",
  "blue2",
  "lightgreen",
  "lightblue",
  "blue",
  "orange4",
  "darkgreen",
  "yellow",
  "green3",
  "yellow3",
  "green4",
  "orange"
)

names(iriscolors) <- unique(scores$id)

# ============================================================
# % Variación Explicada por cada Componente
# ============================================================

var_exp <- round(
  100 * pca_areas$sdev^2 /
    sum(pca_areas$sdev^2),
  2
)
var_exp
# ============================================================
# PCA PLOT
# ============================================================

ggplot(
  scores,
  aes(
    PC1,
    PC2,
    colour = id,
    fill = id
  )
) +
  geom_point(
    size = 0.15,
    alpha = 0.2
  ) +
  stat_ellipse(
    geom = "polygon",
    level = 0.80,
    alpha = 0.15,
    linewidth = 0.8
  ) +
  scale_colour_manual(values = iriscolors) +
  scale_fill_manual(values = iriscolors) +
  theme_classic(base_size = 14) +
  labs(
    x = paste0("PC1: ", var_exp[1], "%"),
    y = paste0("PC2: ", var_exp[2], "%"),
    colour = "Biome",
    fill = "Biome"
  )

# ============================================================
# Plot Geographic Space
# ============================================================

plot(shape_america, col = "gray")

for(i in seq_along(shapes)) {
plot(shapes[[i]],
  col = iriscolors[i],
  add = TRUE
)}  

# Zoom
ca <- ext(-118, -60, 0, 33)

plot(shape_america,
     col = "gray90",
     ext = ca)

for(i in seq_along(shapes)) {
  plot(
    shapes[[i]],
    col = iriscolors[i],
    add = TRUE
  )
}



