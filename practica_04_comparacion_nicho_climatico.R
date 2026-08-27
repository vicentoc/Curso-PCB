# Cargar librerías 
library(ellipsenm)  
library(terra)     

# Leer datos de ocurrencia incluidos en el paquete
occurrences <- read.csv(
  system.file("extdata", "occurrences.csv", package = "ellipsenm")
)

# Explorar distribución de los datos
plot(occurrences[ ,2-3 ])

# Convertir a objeto espacial
occ_vect <- vect(
  occurrences,
  geom = c("longitude", "latitude"),
  crs = "+proj=longlat +datum=WGS84 +no_defs"
)

# Inspeccionar y graficar ocurrencias
occ_vect
plot(occ_vect, pch = 20, col = "blue")


# Cargar variables ambientales (capas bioclimáticas)
vars <- raster::stack(
  list.files(
    system.file("extdata", package = "ellipsenm"),
    pattern = "bio",
    full.names = TRUE
  )
)

# Visualizar variables ambientales
plot(vars)

# Mostrar una capa y superponer ocurrencias
plot(vars[[1]])
plot(occ_vect, pch = 20, col = "blue", add = TRUE)


# Obtener extensión geográfica de las capas ambientales
vext <- raster::extent(vars)

# Visualizar extensión completa
plot(vext)

# Dividir la extensión en dos regiones
ext1 <- raster::extent(
  vext[1],
  mean(vext[1:2]) + 0.2,
  vext[3:4]
)

ext2 <- raster::extent(
  mean(vext[1:2]) + 0.2,
  vext[2],
  vext[3:4]
)

# Visualizar ambas regiones
plot(ext1)
plot(ext2)


# Recortar variables ambientales para cada región
vars1 <- raster::stack(raster::crop(vars, ext1))
plot(vars1)

vars2 <- raster::stack(raster::crop(vars, ext2))
plot(vars2)


# Seleccionar ocurrencias ubicadas en la primera región
occurrences1 <- occurrences[
  occurrences$longitude < (mean(vext[1:2]) + 0.2),
]

# Convertir a objeto espacial
occ_vect_1 <- vect(
  occurrences1,
  geom = c("longitude", "latitude"),
  crs = "+proj=longlat +datum=WGS84 +no_defs"
)

# Verificar ubicación de las ocurrencias respecto a las variables
plot(vars[[1]])
plot(occ_vect_1, add = TRUE)


# Seleccionar ocurrencias de la segunda región
occurrences2 <- occurrences[
  !occurrences$longitude %in% occurrences1$longitude,
]

# Convertir a objeto espacial
occ_vect_2 <- vect(
  occurrences2,
  geom = c("longitude", "latitude"),
  crs = "+proj=longlat +datum=WGS84 +no_defs"
)

# Verificar ubicación de las ocurrencias
plot(vars2[[1]])
plot(occ_vect_2, add = TRUE)


# Construir nicho elipsoidal para la región 1
# mve1 = Minimum Volume
# level = 95% del nicho ambiental estimado
niche1 <- overlap_object(
  occurrences1,
  species = "species",
  longitude = "longitude",
  latitude = "latitude",
  method = "mve1",
  level = 95,
  variables = vars1
)

# Construir nicho elipsoidal para la región 2
niche2 <- overlap_object(
  occurrences2,
  species = "species",
  longitude = "longitude",
  latitude = "latitude",
  method = "mve1",
  level = 95,
  variables = vars2
)


# Calcular traslape entre ambos nichos
overlap <- ellipsoid_overlap(niche1, niche2)

# Calcular traslape usando la unión de los backgrounds ambientales
# y evaluar significancia mediante aleatorizaciones
overlap_st <- ellipsoid_overlap(
  niche1,
  niche2,
  overlap_type = "back_union",
  significance_test = TRUE,
  replicates = 100
)

# Revisar resultados
overlap_st


# Graficar únicamente los elipsoides ambientales
plot_overlap(overlap)

# Graficar elipsoides y background ambiental completo
plot_overlap(
  overlap,
  background = TRUE,
  proportion = 0.6,
  background_type = "full"
)

# Graficar elipsoides y la unión de los backgrounds ambientales
plot_overlap(
  overlap,
  background = TRUE,
  proportion = 1,
  background_type = "back_union"
)

