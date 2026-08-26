######################
## Phyloclimatic Niche
######################
library(ape)
library(phytools)
library(dplyr)
library(RColorBrewer)

# ==========================
# Leer datos
# ==========================
# Datos
# https://datadryad.org/dataset/doi%3A10.5061/dryad.f4qrfj72v?utm_source=chatgpt.com

dat <- read.csv(
  "Dataset_S2.csv",
  stringsAsFactors = FALSE
)

tree <- read.tree("Dataset_S6.tre")
tree1 <- tree[[10]]

# ==========================
# Una especie por familia
# ==========================
set.seed(4)

dat_one <- dat %>%
  group_by(Family) %>%
  slice_sample(n = 1) %>%
  ungroup()

# ==========================
# Variables climáticas
# columnas 5:12
# ==========================
clim <- dat_one[, 5:12]

keep <- complete.cases(clim)

dat_one <- dat_one[keep, ]
clim <- clim[keep, ]

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

# ==========================
# PCA climático
# ==========================
pca <- prcomp(
  clim,
  center = TRUE,
  scale. = TRUE
)
pca 
coords <- pca$x[, 1:2]


# Nombres
rownames(coords) <- gsub(
  " ",
  "_",
  dat_one$Binomial
)

# ==========================
# Coincidencia árbol-datos
# ==========================
shared <- intersect(
  tree1$tip.label,
  rownames(coords)
)

cat(length(shared), "taxa compartidos\n")

tree_sub <- keep.tip(tree1, shared)
coords_sub <- coords[tree_sub$tip.label, ]

# ==========================
# Colores por clado
# ==========================
clade_vec <- dat_one$Clade

names(clade_vec) <- gsub(
  " ",
  "_",
  dat_one$Binomial
)

clade_vec <- clade_vec[tree_sub$tip.label]

clades <- sort(unique(clade_vec))

cols <- setNames(
  colorRampPalette(
    brewer.pal(min(12, length(clades)), "Set3")
  )(length(clades)),
  clades
)

tipcols <- cols[clade_vec]

# ==========================
# Phyloclimatic niche space
# ==========================
phylomorphospace(
  tree_sub,
  coords_sub,
  label = "off",
  control = list(col = "grey75"),
  xlab = paste0(
    "PC1 (",
    round(
      100 * summary(pca)$importance[2,1],
      1
    ),
    "%)"
  ),
  ylab = paste0(
    "PC2 (",
    round(
      100 * summary(pca)$importance[2,2],
      1
    ),
    "%)"
  )
)

points(
  coords_sub[,1],
  coords_sub[,2],
  pch = 21,
  bg = tipcols,
  col = "black",
  cex = 1.8
)

legend(
  "topright",
  legend = names(cols),
  pt.bg = cols,
  pch = 21,
  bty = "n",
  cex = 0.7
)

title(
  main = "Phyloclimatic niche space",
  font.main = 1
)


######################
## Phylomorphospace ##
######################

# A phylomorphospace allows us to consider phylogeny, disparity and
# tempo simultaneously.

# Explore the database 
data(sunfish.data)
sunfish.data
data(sunfish.tree)

## set colors for mapped discrete character
#Set colors according to feeding mode 
cols<-setNames(c("blue","orange"),
               levels(sunfish.data$feeding.mode))

# plot the phylogenetic tree
plotTree(sunfish.tree,ftype="i",fsize=0.5,color="darkgrey",
         offset=0.5)

# Add the tip colors to the tree
ecomorph_sunfish<-as.factor(getStates(sunfish.tree,"tips"))
tiplabels(pie=to.matrix(ecomorph_sunfish[sunfish.tree$tip.label],
                        levels(ecomorph_sunfish)),piecol=cols,cex=0.3)

# Plot the phylomorphospace with colors as the tree
phylomorphospace(sunfish.tree,sunfish.data[2:3],
                 colors=cols,label="horizontal", bty="l", node.by.map=TRUE,
                 node.size=c(1.5,1.5), pch=19, xlab="relative buccal length",
                 ylab="relative gape width")

title(main="Phylomorphospace of buccal morphology in Centrarchidae",
      font.main=1)