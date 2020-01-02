#' ---
#' title: "Identify TK25 grid"
#' author: "RS-eco"
#' ---

#' **Note:** You need to run this scrip inside the MINTbio R project folder

#' ## Load libraries and data

# Load libraries
library(tidyverse); library(sf)

# Get grid from database
source("R/load_database.R")
tk25 <- load_database(name="geo_tk25_quadranten")

# Identify resolution of grid
tk25 %>% arrange(KARTE_QUAD) %>% 
  mutate(XDifU = XRU - XLU,
         XDifO = XRO - XLO,
         YDifL = YLO - YLU,
         YDifR = YRO - YRU) %>% 
  dplyr::select(XDifU, XDifO, YDifL, YDifR) %>% summary

#' Turn quadrants into raster
(r_tk25 <- raster::rasterFromXYZ(tk25[,c("XQMITTE","YQMITTE", "KARTE_QUAD")], 
                                 crs=sp::CRS("+init=epsg:31468"),
                                 res=c(6110, 5560), digits=0))
tk25_grid <- as.data.frame(raster::rasterToPoints(r_tk25))
save(tk25_grid, file="tk25_grid.rda", compress = "xz")
