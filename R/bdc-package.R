#' Bavarian Data Cube
#' 
#' R package to access various data sources for Bavaria, i.e. elevation, climate and land-use data.
#' 
#' @name bdc package
#' @aliases bdcpackage
#' @docType package
#' @title Bavarian Data Cube
#' @author RS-eco
#' @importFrom magrittr %>%
#' @keywords package
NULL
#'
#' @docType data
#' @name alt_bav_tk25
#' @title altitudinal and terrain data of bavaria
#' @description NASA SRTM v3.0 elevation data of Bavaria, Germany
#' @usage data(alt_bav_tk25)
#' @details Elevation and terrain data of Bavaria, Germany derived from NASA SRTM 3 Arc Sec v3.0 data and 
#' resampled onto the TK25 grid. Terrain variables were calculated using the raster::terrain() function. 
#' Data includes information on altitude, aspect, slope, hillshade (calculated from slope and aspect), 
#' Terrain Ruggedness Index (tri), Topographic Position Index (tpi), 
#' Topographic Position Index with neighborhood size 5 (tpi5), roughness and flow direction (flowdir).
#' @format A \code{data.frame} with 2268 observations and 11 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://gdex.cr.usgs.gov/gdex/}}
NULL
#'
#' @docType data
#' @name amphibians_bav
#' @title amphibian range maps for the extent of Bavaria
#' @description  IUCN Amphibian ranges with Bavaria, Germany
#' @usage data(amphibians_bav)
#' @details shapefiles of the global IUCN ranges of all amphibian species that intersect with the extent of Bavaria 
#' @format A \code{data.frame} with 23 observations and 26 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://www.iucnredlist.org/resources/spatial-data-download}}
NULL
#'
#' @docType data
#' @name bavaria
#' @title administrative boundary of bavaria
#' @description GADM outline of Bavaria, Germany
#' @usage data(bavaria)
#' @details Administrative boundary of Bavaria, Germany derived from GADM data.
#' @format A \code{data.frame} with 1 observation and 13 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://www.gadm.org/data.html}}
NULL
#'
#' @docType data
#' @name biotime_deu
#' @title bioTime data for Germany
#' @description biodiversity time series trends from the BioTime database for Germany
#' @usage data(biotime_deu)
#' @details Biodiversity time series trends extracted from the BioTime database for the 
#' extent of Germany. For Bavaria no data is available.
#' @format A \code{data.frame} with 58739 observation and 15 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://zenodo.org/record/3265871}}
#' @references Dornelas M, Antão LH, Moyes F, Bates, AE, Magurran, AE, et al. BioTIME: 
#' A database of biodiversity time series for the Anthropocene. 
#' Global Ecol Biogeogr. 2018; 27:760 - 786. https://doi.org/10.1111/geb.12729
NULL
#' 
#' @docType data
#' @name bird_bav
#' @title bird range polygon data for Bavaria
#' @description range polygons of all bird species for Bavaria
#' @usage data(bird_bav)
#' @details Bird range polygons of all bird species for Bavaria obtained from BirdLife.
#' @format A \code{data.frame} with 283 observation and 18 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://datazone.birdlife.org/species/requestdis}}
NULL
#'
#' @docType data
#' @name bird_bva_shape
#' @title breeding bird ranges of Bavaria
#' @description range points of saP-relevant breeding bird species for Bavaria
#' @usage data(bird_bva_shape)
#' @details Range points of Bavarian saP-relevant breeding bird species
#' @format A \code{data.frame} with 57856 observation and 38 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://www.lfu.bayern.de/natur/atlas_brutvoegel/index.htm}}
NULL
#'
#' @docType data
#' @name carbon_bav
#' @title Carbon stock data for Bavaria
#' @description Potential and actual carbon stock for Bavaria
#' @usage data(carbon_bav)
#' @details Potential and actual carbon stock for Bavaria at 5 Arc min resolution.
#' @format A \code{data.frame} with 1247 observation and 7 variables.
#' @references Erb, Karl-Heinz, Tamara Fetzel, Christoph Plutzar, 
#' Thomas Kastner, Christian Lauk, Andreas Mayer, 
#' Maria Niedertscheider, Christian Korner, and Helmut Haberl. 
#' Biomass Turnover Time in Terrestrial Ecosystems Halved by Land Use. 
#' Nature Geoscience 9, no. 9 (September 2016): 674-78.
NULL
#'
#' @docType data
#' @name cci_bav_tk25
#' @title CCI land cover data of bavaria
#' @description CCI land cover data of Bavaria, Germany
#' @usage data(cci_bav_tk25)
#' @details CCI land cover data of Bavaria, Germany resampled onto the TK25 grid. 
#' CCI Land cover are global land cover maps at 300m spatial resolution based on MERIS and SPOT satellite data. 
#' Data includes annual information from 1992 - 2015.
#' @format A \code{data.frame} with 2268 observations and 26 variables.
NULL
#' 
#' @docType data
#' @name chelsa_bav_tk25
#' @title Chelsa climate data of bavaria
#' @description Chelsa climate data of Bavaria, Germany
#' @usage data(chelsa_bav_tk25)
#' @details Chelsa climate data of Bavaria, Germany resampled onto the TK25 grid. 
#' The data.frame contains bioclimatic variables, monthly precipitation, 
#' monthly minimum, mean and maximum temperature of current climatologies (1979-2013).
#' @format A \code{data.frame} with 2268 observations and 66 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://chelsa-climate.org/}}
#' @references Karger, D.N., Conrad, O., Böhner, J., Kawohl, T., Kreft, H., Soria-Auza, R.W., 
#' Zimmermann, N.E., Linder, H.P. & Kessler, M. (2017) Climatologies at high resolution for 
#' the earth’s land surface areas. Scientific Data 4, 170122.
NULL
#'
#' @docType data
#' @name cordex_bioclimAdjust_30yr_bav
#' @title Euro-cordex bioclimatic data of bavaria
#' @description Euro-cordex monthly bioclimatic data of Bavaria, Germany
#' @usage data(cordex_prAdjust_bav)
#' @details Euro-cordex climate simulation data of Bavaria, Germany. 
#' The data.frame contains bioclimatic data for 3 time periods (1971-2000, 2021-2050, 2071-2100) 
#' under 3 representative concentration pathways (rcps; RCP2.6, RCP4.5, RCP8.5), 
#' 5 global circulation models (gcms; MPI-M-MPI-ESM-LR, CNRM-CERFACS-CNRM-CM5, 
#' MOHC-HadGEM2-ES, ICHEC-EC-EARTH, IPSL-IPSL-CM5A-MR), 5 regional climate models (rcms; CLMcom-CCLM4-8-17, 
#' KNMI-RACMO22E, MPI-CSC-REMO2009, SMHI-RCA4, DMI-HIRHAM5), 
#' 4 ensemble (r1i1p1, r2i1p1, r3i1p1, r12i1p1) and 3 rs (v1, v1a, v2).
#' @format A \code{data.frame} with 66123 observations and 27 variables.
NULL
#'
#' @docType data
#' @name cordex_prAdjust_bav
#' @title Euro-cordex precipitation data of bavaria
#' @description Euro-cordex monthly precipitation data of Bavaria, Germany
#' @usage data(cordex_prAdjust_bav)
#' @details Euro-cordex climate simulation data of Bavaria, Germany. 
#' The data.frame contains monthly bias-adjusted precipitation data from 1960 - 2099 under 3 representative concentration 
#' pathways (rcps; RCP2.6, RCP4.5, RCP8.5), 5 global circulation models (gcms; MPI-M-MPI-ESM-LR, CNRM-CERFACS-CNRM-CM5, 
#' MOHC-HadGEM2-ES, ICHEC-EC-EARTH, IPSL-IPSL-CM5A-MR), 5 regional climate models (rcms; CLMcom-CCLM4-8-17, 
#' KNMI-RACMO22E, MPI-CSC-REMO2009, SMHI-RCA4, DMI-HIRHAM5), 4 ensemble (r1i1p1, r2i1p1, r3i1p1, r12i1p1) and 3 rs (v1, v1a, v2).
#' @format A \code{data.frame} with 37837287 observations and 9 variables.
NULL
#'
#' @docType data
#' @name cordex_tasAdjust_bav
#' @title Euro-cordex temperature data of bavaria
#' @description Euro-cordex monthly temperature data of Bavaria, Germany
#' @usage data(cordex_tasAdjust_bav)
#' @details Euro-cordex climate simulation data of Bavaria, Germany. 
#' The data.frame contains monthly bias-adjusted temperature data from 1960 - 2099 under 3 representative concentration 
#' pathways (rcps; RCP2.6, RCP4.5, RCP8.5), 5 global circulation models (gcms; MPI-M-MPI-ESM-LR, CNRM-CERFACS-CNRM-CM5, 
#' MOHC-HadGEM2-ES, ICHEC-EC-EARTH, IPSL-IPSL-CM5A-MR), 5 regional climate models (rcms; CLMcom-CCLM4-8-17, 
#' KNMI-RACMO22E, MPI-CSC-REMO2009, SMHI-RCA4, DMI-HIRHAM5), 4 ensemble (r1i1p1, r2i1p1, r3i1p1, r12i1p1) and 3 rs (v1, v1a, v2).
#' @format A \code{data.frame} with 37837287 observations and 9 variables.
NULL
#'
#' @docType data
#' @name cordex_tasminAdjust_bav
#' @title Euro-cordex minimum temperature data of bavaria
#' @description Euro-cordex monthly minimum temperature data of Bavaria, Germany
#' @usage data(cordex_tasminAdjust_bav)
#' Euro-cordex climate simulation data of Bavaria, Germany. 
#' The data.frame contains monthly bias-adjusted minimum temperature data from 1960 - 2099 under 3 representative concentration 
#' pathways (rcps; RCP2.6, RCP4.5, RCP8.5), 5 global circulation models (gcms; MPI-M-MPI-ESM-LR, CNRM-CERFACS-CNRM-CM5, 
#' MOHC-HadGEM2-ES, ICHEC-EC-EARTH, IPSL-IPSL-CM5A-MR), 5 regional climate models (rcms; CLMcom-CCLM4-8-17, 
#' KNMI-RACMO22E, MPI-CSC-REMO2009, SMHI-RCA4, DMI-HIRHAM5), 4 ensemble (r1i1p1, r2i1p1, r3i1p1, r12i1p1) and 3 rs (v1, v1a, v2).
#' @format A \code{data.frame} with 37837287 observations and 9 variables.
NULL
#'
#' @docType data
#' @name cordex_tasmaxAdjust_bav
#' @title Euro-cordex maximum temperature data of bavaria
#' @description Euro-cordex monthly maximum temperature data of Bavaria, Germany
#' @usage data(cordex_tasmaxAdjust_bav)
#' Euro-cordex climate simulation data of Bavaria, Germany. 
#' The data.frame contains monthly bias-adjusted maximum temperature data from 1960 - 2099 under 3 representative concentration 
#' pathways (rcps; RCP2.6, RCP4.5, RCP8.5), 5 global circulation models (gcms; MPI-M-MPI-ESM-LR, CNRM-CERFACS-CNRM-CM5, 
#' MOHC-HadGEM2-ES, ICHEC-EC-EARTH, IPSL-IPSL-CM5A-MR), 5 regional climate models (rcms; CLMcom-CCLM4-8-17, 
#' KNMI-RACMO22E, MPI-CSC-REMO2009, SMHI-RCA4, DMI-HIRHAM5), 4 ensemble (r1i1p1, r2i1p1, r3i1p1, r12i1p1) and 3 rs (v1, v1a, v2).
#' @format A \code{data.frame} with 37837287 observations and 9 variables.
NULL
#'
#' @docType data
#' @name corine_cha_bav_tk25
#' @title Chelsa climate data of bavaria
#' @description Chelsa climate data of Bavaria, Germany
#' @usage data(corine_cha_bav_tk25)
#' @details Corine land cover change data of Bavaria, Germany resampled onto the TK25 grid. 
#' Corine Land cover change are land cover change maps for Europe mapped at a resolution of 5 ha derived 
#' from the raw Corine land cover data.
#' @format A \code{data.frame} with 2056 observations and 6 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://land.copernicus.eu/pan-european/corine-land-cover}}
NULL
#'
#' @docType data
#' @name corine_lc_bav_tk25
#' @title Corine land cover data of bavaria
#' @description Corine land cover data of Bavaria, Germany
#' @usage data(corine_cha_bav_tk25)
#' @details Corine land cover data of Bavaria, Germany resampled onto the TK25 grid. 
#' Corine Land cover are land cover maps for Europe for 1990, 2000, 2006, 2012, and 2018. 
#' It consists of an inventory of land cover in 44 classes.
#' @format A \code{data.frame} with 2268 observations and 7 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://land.copernicus.eu/pan-european/corine-land-cover}}
NULL
#'
#' @docType data
#' @name diva_cover_deu
#' @title Diva-GIS land cover data of germany
#' @description Diva-GIS land cover data of Germany
#' @usage data(diva_cover_deu)
#' @details Land cover data of Germany downloaded from diva-gis.org. 
#' Land cover comes originally from GLC2000 and has been resampled onto a 30 seconds grid.
#' @format A \code{data.frame} with 1071360 observations and 3 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://www.diva-gis.org/gdata}}
NULL
#'
#' @docType data
#' @name diva_pop_deu
#' @title Diva-GIS population data of germany
#' @description Diva-GIS population data of Germany
#' @usage data(diva_pop_deu)
#' @details Population data (old) of Germany downloaded from diva-gis.org, which is originally derived from 
#' the global gridded population database (CIESIN, 2000) and has a resoltuon of 30 Arc seconds.
#' @format A \code{data.frame} with 189530 observations and 3 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://www.diva-gis.org/gdata}}
NULL
#'
#' @docType data
#' @name diva_rails_deu
#' @title Diva-GIS railroads data of germany
#' @description Diva-GIS railroads data of Germany
#' @usage data(diva_rails_deu)
#' @details Railroads data of Germany downloaded from diva-gis.org derived from
#' the Digital Chart of the World.
#' @format A \code{sf} object with 5268 observations and 8 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://www.diva-gis.org/gdata}}
NULL
#'
#' @docType data
#' @name diva_roads_deu
#' @title Diva-GIS roads data of germany
#' @description Diva-GIS roads data of Germany
#' @usage data(diva_roads_deu)
#' @details Roads data of Germany downloaded from diva-gis.org derived from
#' the Digital Chart of the World.
#' @format A \code{sf} object with 4713 observations and 6 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://www.diva-gis.org/gdata}}
NULL
#'
#' @docType data
#' @name diva_water_areas_deu
#' @title Diva-GIS inland water data of germany
#' @description Diva-GIS inland water data of Germany (area features)
#' @usage data(diva_water_areas_deu)
#' @details Rivers, canals, and lakes of Germany downloaded from diva-gis.org derived from
#' the Digital Chart of the World. Seperate files for line and area features
#' @format A \code{sf} object with 907 observations and 6 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://www.diva-gis.org/gdata}}
NULL
#'
#' @docType data
#' @name diva_water_lines_deu
#' @title Diva-GIS inland water data of germany
#' @description Diva-GIS inland water data of Germany (line features)
#' @usage data(diva_water_lines_deu)
#' @details Rivers, canals, and lakes of Germany downloaded from diva-gis.org derived from
#' the Digital Chart of the World. Seperate files for line and area features
#' @format A \code{sf} object with 2147 observations and 6 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://www.diva-gis.org/gdata}}
NULL
#'
#' @docType data
#' @name eurolst_bav_tk25
#' @title EuroLST climate data of bavaria
#' @description EuroLST climate data of Bavaria, Germany
#' @usage data(eurolst_bav_tk25)
#' @details Bioclimatic data (bio1 - bio11) derived from MODIS Satellite images
#' resampled onto the TK25 grid.
#' @format A \code{data.frame} with 2268 observations and 11 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://www.geodati.fmach.it/eurolst.html}}
#' @references Metz, M.; Rocchini, D.; Neteler, M. 2014: Surface temperatures at the continental scale: 
#' Tracking changes with remote sensing at unprecedented detail. Remote Sensing. 2014, 6(5): 3822-3840
NULL
#'
#' @docType data
#' @name ewembi_bav_tk25
#' @title EWEMBI climate data of bavaria
#' @description EWEMBI climate data of Bavaria, Germany
#' @usage data(ewembi_bav_tk25)
#' @details Daily precipitation and minimum, maximum and mean temperature of Bavaria, Germany from 1979 - 2016
#' at a spatial resolution of 0.5 degree resampled onto the TK25 grid.
#' @format A \code{data.frame} with 9072 observations and 13883 variables.
NULL
#'
#' @docType data
#' @name gard_reptiles_bav
#' @title Reptile range data of bavaria
#' @description Gard reptile range data of Bavaria, Germany
#' @usage data(gard_reptiles_bav)
#' @details GARD reptile range data of Bavaria, Germany
#' @format A \code{data.frame} with 12 observations and 7 variables.
NULL
#'
#' @docType data
#' @name gimms3g_v0_bav
#' @title GIMMS3g v0 ndvi data of bavaria
#' @description GIMMS3g v0 ndvi data of Bavaria, Germany
#' @usage data(gimms3g_v0_bav)
#' @details GIMMS3g v0 ndvi data of of Bavaria, Germany from 1981 to 2013.
#' @format A \code{data.frame} with 973340 observations and 5 variables.
NULL
#'
#' @docType data
#' @name gimms3g_v1_bav
#' @title GIMMS3g v1 ndvi data of bavaria
#' @description GIMMS3g v1 ndvi data of Bavaria, Germany
#' @usage data(gimms3g_v1_bav)
#' @details GIMMS3g v0 ndvi data of of Bavaria, Germany from 1981 to 2015.
#' @format A \code{data.frame} with 1033344 observations and 4 variables.
NULL
#'
#' @docType data
#' @name globcover_bav_tk25
#' @title Globcover land cover data of bavaria
#' @description Globcover land cover data of Bavaria, Germany
#' @usage data(globcover_bav_tk25)
#' @details Land cover data of Bavaria, Germany for 2004 and 2009
#' resampled onto the TK25 grid.
#' @format A \code{data.frame} with 2268 observations and 6 variables.
#' @source This data has been obtained from: \itemize{\item \url{http://due.esrin.esa.int/page_globcover.php}}
NULL
#'
#' @docType data
#' @name hfp_1993_v3_bav
#' @title Human footprint of bavaria in 1993
#' @description Global human footprint v3 for 1993 of Bavaria, Germany
#' @usage data(hfp_1993_v3_bav)
#' @details Global human footprint v3 for 1993 of Bavaria, Germany
#' @format A \code{data.frame} with 70330 observations and 11 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://wcshumanfootprint.org/}}
NULL
#'
#' @docType data
#' @name hfp_2009_v3_bav
#' @title Human footprint of bavaria in 2009
#' @description Global human footprint v3 for 2009 of Bavaria, Germany
#' @usage data(hfp_2009_v3_bav)
#' @details Global human footprint v3 for 2009 of Bavaria, Germany
#' @format A \code{data.frame} with 70330 observations and 11 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://wcshumanfootprint.org/}}
NULL
#'
#' @docType data
#' @name iba_bav
#' @title Important Bird Areas of bavaria
#' @description Important Bird Areas of Bavaria, Germany
#' @usage data(iba_bav)
#' @details Important Bird Area vector data of Bavaria, Germany.
#' @format A \code{sf} object with 157 observations and 10 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://bergenhusen.nabu.de/forschung/ibas/index.html}}
NULL
#'
#' @docType data
#' @name isimip_bio_bav_tk25
#' @title ISIMIP2b bioclimatic data of bavaria
#' @description ISIMIP2b bioclimatic data of Bavaria, Germany for 1995 and 2080
#' @usage data(isimip_bio_bav_tk25)
#' @details Bioclimatic data of Bavaria, Germany for 1995 and 2080 
#' under two representative concentration pathways (RCP2.6 and RCP8.0) and 
#' 4 global climate models (GFDL-ESM2M, HadGEM2-ES, IPSL-CM5A-LR, MIROC5) and 
#' resampled onto the TK25 grid.
#' @format A \code{data.frame} with 20412 observations and 24 variables.
NULL
#'
#' @docType data
#' @name isimip_lu_bav_tk25
#' @title ISIMIP2b land-use data of bavaria
#' @description ISIMIP2b land-use data of Bavaria, Germany for 1995 and 2080
#' @usage data(isimip_lu_bav_tk25)
#' @details Land-use data of Bavaria, Germany for 1995 and 2080 
#' under two representative concentration pathways (RCP2.6 and RCP8.0) and 
#' 4 global climate models (GFDL-ESM2M, HadGEM2-ES, IPSL-CM5A-LR, MIROC5) and 
#' resampled onto the TK25 grid.
#' @format A \code{data.frame} with 36288 observations and 31 variables.
NULL
#'
#' @docType data
#' @name kk09_bav
#' @title KK09 data of Bavaria
#' @description KK09 data of Bavaria, Germany
#' @usage data(kk09_bav)
#' @details The KK09 Anthropogenic Land Cover Change Scenarios for Bavaria, Germany
#' @format A \code{data.frame} with 3741 observations and 289 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://doi.org/10.1594/PANGAEA.893758}}
#' @references Kaplan, Jed O; Krumhardt, Kristen M; Zimmermann, Niklaus E (2009): 
#' The prehistoric and preindustrial deforestation of Europe. 
#' Quaternary Science Reviews, 28(27-28), 3016-3034, https://doi.org/10.1016/j.quascirev.2009.09.028
NULL
#'
#' @docType data
#' @name kk10_bav
#' @title KK10 data of Bavaria
#' @description KK10 data of Bavaria, Germany
#' @usage data(kk10_bav)
#' @details The KK10 Anthropogenic Land Cover Change scenario for the preindustrial Holocene data of Bavaria, Germany
#' @format A \code{data.frame} with 1247 observations and 7903 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://doi.org/10.1594/PANGAEA.871369}}
#' @references Kaplan, Jed O; Krumhardt, Kristen M; Ellis, Erle C; Ruddiman, William F; 
#' Lemmen, Carsten; Klein Goldewijk, Kees (2011): Holocene carbon emissions as a result of 
#' anthropogenic land cover change. The Holocene, 21(5), 775-791, https://doi.org/10.1177/0959683610386983
NULL
#'
#' @docType data
#' @name lakes_points_bav
#' @title Lake point data of Bavaria
#' @description Lake point data of Bavaria, Germany
#' @usage data(lakes_points_bav)
#' @details Lake point data of Bavaria, Germany
#' @format A \code{data.frame} with 423 observations and 22 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://www.hydrosheds.org/downloads}}
NULL
#'
#' @docType data
#' @name lakes_poly_bav
#' @title Lake polygon data of Bavaria
#' @description Lake polygon data of Bavaria, Germany
#' @usage data(lakes_poly_bav)
#' @details Lake polygon data of Bavaria, Germany
#' @format A \code{data.frame} with 427 observations and 22 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://www.hydrosheds.org/downloads}}
NULL
#'
#' @docType data
#' @name mammals_bav
#' @title Mammal polygon data of Bavaria
#' @description Mammal polygon data of Bavaria, Germany
#' @usage data(mammals_bav)
#' @details Mammal polygon data of Bavaria, Germany
#' @format A \code{data.frame} with 89 observations and 26 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://www.iucnredlist.org/resources/spatial-data-download}}
NULL
#'
#' @docType data
#' @name merraclim_10m_bav_tk25
#' @title MerraClim bioclimatic data of bavaria
#' @description MerraClim bioclimatic data of Bavaria, Germany for 1980, 1990 and 2000.
#' @usage data(merraclim_10m_bav_tk25)
#' @details Bioclimatic data of Bavaria, Germany for 1980, 1990 and 2000 
#' derived from data at 10 minute spatial resolution and resampled onto the TK25 grid.
#' @format A \code{data.frame} with 20412 observations and 23 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://datadryad.org/stash/dataset/doi:10.5061/dryad.s2v81}}
#' @references C. Vega, Greta; Pertierra, Luis R.; Olalla-Tárraga, Miguel Ángel (2017), 
#' MERRAclim, a high-resolution global dataset of remotely sensed bioclimatic variables 
#' for ecological modelling, Scientific Data, https://doi.org/10.1038/sdata.2017.78
NULL
#'
#' @docType data
#' @name merraclim_2.5m_bav_tk25
#' @title MerraClim bioclimatic data of bavaria
#' @description MerraClim bioclimatic data of Bavaria, Germany for 1980, 1990 and 2000.
#' @usage data(merraclim_2.5m_bav_tk25)
#' @details Bioclimatic data of Bavaria, Germany for 1980, 1990 and 2000 
#' derived from data at 2.5 minute spatial resolution and resampled onto the TK25 grid.
#' @format A \code{data.frame} with 20412 observations and 23 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://datadryad.org/stash/dataset/doi:10.5061/dryad.s2v81}}
#' @references C. Vega, Greta; Pertierra, Luis R.; Olalla-Tárraga, Miguel Ángel (2017), 
#' MERRAclim, a high-resolution global dataset of remotely sensed bioclimatic variables 
#' for ecological modelling, Scientific Data, https://doi.org/10.1038/sdata.2017.78
NULL
#'
#' @docType data
#' @name merraclim_5m_bav_tk25
#' @title MerraClim bioclimatic data of bavaria
#' @description MerraClim bioclimatic data of Bavaria, Germany for 1980, 1990 and 2000.
#' @usage data(merraclim_5m_bav_tk25)
#' @details Bioclimatic data of Bavaria, Germany for 1980, 1990 and 2000 
#' derived from data at 5 minute spatial resolution and resampled onto the TK25 grid.
#' @format A \code{data.frame} with 20412 observations and 23 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://datadryad.org/stash/dataset/doi:10.5061/dryad.s2v81}}
#' @references C. Vega, Greta; Pertierra, Luis R.; Olalla-Tárraga, Miguel Ángel (2017), 
#' MERRAclim, a high-resolution global dataset of remotely sensed bioclimatic variables 
#' for ecological modelling, Scientific Data, https://doi.org/10.1038/sdata.2017.78
NULL
#'
#' @docType data
#' @name modis_lc_bav_tk25
#' @title MODIS land cover data of bavaria
#' @description MODIS land cover data of Bavaria, Germany
#' @usage data(modis_lc_bav_tk25)
#' @details Land cover data of Bavaria, Germany derived from MODIS satellite data and resampled onto the TK25 grid.
#' @format A \code{data.frame} with 26975 observations and 11 variables.
#' @source Cite this dataset as: \itemize{\item Friedl, M. A., Sulla-Menashe, D., Tan, B., Schneider, A., 
#' Ramankutty, N., Sibley, A., and Huang, X. (2010). MODIS Collection 5 global land cover: 
#' Algorithm refinements and characterization of new datasets. 
#' Remote Sensing of Environment, 114, 168-182. \url{https://yceo.yale.edu/modis-land-cover-product-mcd12q1}.}
NULL
#'
#' @docType data
#' @name modis_lst_bav_tk25
#' @title MODIS land surface temperature data of bavaria
#' @description MODIS land surface temperature data of Bavaria, Germany
#' @usage data(modis_lst_bav_tk25)
#' @details Monthly land surface temperature (min, max and mean) data from 2003 - 2016 
#' derived from MODIS satellite images, cropped by the extent of Bavaria and resampled onto the TK25 grid.
#' @format A \code{data.frame} with 2268 observations and 506 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://zenodo.org/record/1115666}}
#' @references Metz M., Andreo V., Neteler M. (2017): A new fully gap-free time series of 
#' Land Surface Temperature from MODIS LST data. 
#' Remote Sensing, 9(12):1333. DOI: http://dx.doi.org/10.3390/rs9121333
NULL
#'
#' @docType data
#' @name odonata_bav
#' @title Odonata polygon data of Bavaria
#' @description Odonata polygon data of Bavaria, Germany
#' @usage data(odonata_bav)
#' @details Odonata polygon data of Bavaria, Germany
#' @format A \code{data.frame} with 18 observations and 28 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://www.iucnredlist.org/resources/spatial-data-download}}
NULL
#'
#' @docType data
#' @name pa_bav
#' @title Protected area polygon data of Bavaria
#' @description Protected area polygon data of Bavaria, Germany
#' @usage data(pa_bav)
#' @details Protected area polygon data of Bavaria, Germany
#' @format A \code{data.frame} with 2224 observations and 29 variables.
#' @source Cite this dataset as: \itemize{\item UNEP-WCMC and IUCN (2019), Protected Planet: 
#' The World Database on Protected Areas (WDPA) On-line, July/2019, Cambridge, UK: UNEP-WCMC and IUCN. 
#' Available at: \url{https://protectedplanet.net.}.}
NULL
#'
#' @docType data
#' @name pa_bav_tk25
#' @title protected area data of bavaria
#' @description IUCN protected area data of Bavaria, Germany
#' @usage data(pa_bav_tk25)
#' @details Protected area data of Bavaria, Germany derived from the World Database on Protected Areas 
#' and resampled onto the TK25 grid.
#' @format A \code{data.frame} with 13762 observations and 4 variables.
#' @source Cite this dataset as: \itemize{\item UNEP-WCMC and IUCN (2019), Protected Planet: 
#' The World Database on Protected Areas (WDPA) On-line, July/2019, Cambridge, UK: UNEP-WCMC and IUCN. 
#' Available at: \url{https://protectedplanet.net.}.}
NULL
#'
#' @docType data
#' @name plot_coords_bav
#' @title Plot coordinates of bavaria
#' @description Plot coordinates of Bavaria, Germany
#' @usage data(plot_coords_bav)
#' @details Plot coordinates of Bavaria, Germany.
#' @format A \code{data.frame} with 180 observations and 4 variables.
NULL
#'
#' @docType data
#' @name predicts_deu
#' @title Predicts data of Germany
#' @description Predicts data of Germany
#' @usage data(predicts_deu)
#' @details Predicts data of Germany. For Bavaria no data is available.
#' @format A \code{data.frame} with 97319 observations and 86 variables.
NULL
#'
#' @docType data
#' @name reptiles_bav
#' @title Reptile polygon data of bavaria
#' @description Reptile polygon data of Bavaria, Germany
#' @usage data(reptiles_bav)
#' @details IUCN reptile polygon data of Bavaria, Germany.
#' @format A \code{data.frame} with 6 observations and 28 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://www.iucnredlist.org/resources/spatial-data-download}}
NULL
#'
#' @docType data
#' @name rivers_bav
#' @title River data of bavaria
#' @description River data of Bavaria, Germany
#' @usage data(rivers_bav)
#' @details River data of Bavaria, Germany.
#' @format A \code{data.frame} with 4556 observations and 15 variables.
#' @source This data has been obtained from: \itemize{\item \url{https://www.hydrosheds.org/downloads}}
NULL
#'
#' @docType data
#' @name tk25_grid
#' @title tk25 grid data of bavaria
#' @description TK25 grid of Bavaria, Germany
#' @usage data(tk25_grid)
#' @details TK25 grid data of Bavaria, Germany derived from the LFU Biodiversity database.
#' @format A \code{data.frame} with 2268 observations and 3 variables.
NULL
#'
#' @docType data
#' @name wc1.4_10m_bav_tk25
#' @title worldclim data of bavaria
#' @description Current worldclim temperature, precipitation and bioclim data of Bavaria, Germany
#' @usage data(wc1.4_10m_bav_tk25)
#' @details Current temperature, precipitation and bioclimatic data of Bavaria, Germany derived from 10 minutes
#' Worldclim v1.4 and resampled onto the TK25 grid. Data is derived from interpolations of observed data, 
#' representative of 1960-1990.
#' @format A \code{data.frame} with 2268 observation and 69 variables.
#' @source Cite this dataset as: \itemize{\item Hijmans, R.J., S.E. Cameron, J.L. Parra, P.G. Jones and A. Jarvis, 2005. 
#' Very high resolution interpolated climate surfaces for global land areas. 
#' International Journal of Climatology 25: 1965-1978.}
#' This data has been downloaded from: \itemize{\item \url{https://worldclim.org/version1}}
NULL
#'
#' @docType data
#' @name wc1.4_2.5m_bav_tk25
#' @title worldclim data of bavaria
#' @description Current worldclim temperature, precipitation and bioclim data of Bavaria, Germany
#' @usage data(wc1.4_2.5m_bav_tk25)
#' @details Current temperature, precipitation and bioclimatic data of Bavaria, Germany derived from 2.5 minutes
#' Worldclim v1.4 and resampled onto the TK25 grid. Data is derived from interpolations of observed data, 
#' representative of 1960-1990.
#' @format A \code{data.frame} with 2268 observation and 69 variables.
#' @source Cite this dataset as: \itemize{\item Hijmans, R.J., S.E. Cameron, J.L. Parra, P.G. Jones and A. Jarvis, 2005. 
#' Very high resolution interpolated climate surfaces for global land areas. 
#' International Journal of Climatology 25: 1965-1978.}
#' This data has been downloaded from: \itemize{\item \url{https://worldclim.org/version1}}
NULL
#'
#' @docType data
#' @name wc1.4_5m_bav_tk25
#' @title worldclim data of bavaria
#' @description Current worldclim temperature, precipitation and bioclim data of Bavaria, Germany
#' @usage data(wc1.4_5m_bav_tk25)
#' @details Current temperature, precipitation and bioclimatic data of Bavaria, Germany derived from 5 minutes
#' Worldclim v1.4 and resampled onto the TK25 grid. Data is derived from interpolations of observed data, 
#' representative of 1960-1990.
#' @format A \code{data.frame} with 2268 observation and 69 variables.
#' @source Cite this dataset as: \itemize{\item Hijmans, R.J., S.E. Cameron, J.L. Parra, P.G. Jones and A. Jarvis, 2005. 
#' Very high resolution interpolated climate surfaces for global land areas. 
#' International Journal of Climatology 25: 1965-1978.}
#' This data has been downloaded from: \itemize{\item \url{https://worldclim.org/version1}}
NULL
#'
#' @docType data
#' @name wc1.4_30s_bav_tk25
#' @title worldclim data of bavaria
#' @description Current worldclim temperature, precipitation and bioclim data of Bavaria, Germany
#' @usage data(wc1.4_30s_bav_tk25)
#' @details Current temperature, precipitation and bioclimatic data of Bavaria, Germany derived from 30 seconds
#' Worldclim v1.4 and resampled onto the TK25 grid. Data is derived from interpolations of observed data, 
#' representative of 1960-1990.
#' @format A \code{data.frame} with 2268 observation and 69 variables.
#' @source Cite this dataset as: \itemize{\item Hijmans, R.J., S.E. Cameron, J.L. Parra, P.G. Jones and A. Jarvis, 2005. 
#' Very high resolution interpolated climate surfaces for global land areas. 
#' International Journal of Climatology 25: 1965-1978.}
#' This data has been downloaded from: \itemize{\item \url{https://worldclim.org/version1}}
NULL
#'
#' @docType data
#' @name wc2.0_10m_bav_tk25
#' @title worldclim data of bavaria
#' @description Current worldclim temperature, precipitation and bioclim data of Bavaria, Germany
#' @usage data(wc2.0_10m_bav_tk25)
#' @details Current temperature, precipitation and bioclimatic data of Bavaria, Germany derived from 10 minutes 
#' Worldclim v2.0 and resampled onto the TK25 grid. Data is derived from interpolations of observed data, 
#' representative of 1970-2000.
#' @format A \code{data.frame} with 2268 observation and 69 variables.
#' @source Cite this dataset as: \itemize{\item Fick, S.E. and R.J. Hijmans, 2017. Worldclim 2: 
#' New 1-km spatial resolution climate surfaces for global land areas. International Journal of Climatology.}
#' This data has been downloaded from: \itemize{\item \url{https://worldclim.org/version1}}
NULL
#'
#' @docType data
#' @name wc2.0_2.5m_bav_tk25
#' @title worldclim data of bavaria
#' @description Current worldclim temperature, precipitation and bioclim data of Bavaria, Germany
#' @usage data(wc2.0_2.5m_bav_tk25)
#' @details Current temperature, precipitation and bioclimatic data of Bavaria, Germany derived from 2.5 minutes 
#' Worldclim v2.0 and resampled onto the TK25 grid. Data is derived from interpolations of observed data, 
#' representative of 1970-2000.
#' @format A \code{data.frame} with 2268 observation and 69 variables.
#' @source Cite this dataset as: \itemize{\item Fick, S.E. and R.J. Hijmans, 2017. Worldclim 2: 
#' New 1-km spatial resolution climate surfaces for global land areas. International Journal of Climatology.}
#' This data has been downloaded from: \itemize{\item \url{https://worldclim.org/version1}}
NULL
#'
#' @docType data
#' @name wc2.0_5m_bav_tk25
#' @title worldclim data of bavaria
#' @description Current worldclim temperature, precipitation and bioclim data of Bavaria, Germany
#' @usage data(wc2.0_5m_bav_tk25)
#' @details Current temperature, precipitation and bioclimatic data of Bavaria, Germany derived from 5 minutes 
#' Worldclim v2.0 and resampled onto the TK25 grid. Data is derived from interpolations of observed data, 
#' representative of 1970-2000.
#' @format A \code{data.frame} with 2268 observation and 69 variables.
#' @source Cite this dataset as: \itemize{\item Fick, S.E. and R.J. Hijmans, 2017. Worldclim 2: 
#' New 1-km spatial resolution climate surfaces for global land areas. International Journal of Climatology.}
#' This data has been downloaded from: \itemize{\item \url{https://worldclim.org/version1}}
NULL
#'
#' @docType data
#' @name wc2.0_30s_bav_tk25
#' @title worldclim data of bavaria
#' @description Current worldclim temperature, precipitation and bioclim data of Bavaria, Germany
#' @usage data(wc2.0_30s_bav_tk25)
#' @details Current temperature, precipitation and bioclimatic data of Bavaria, Germany derived from 30 seconds 
#' Worldclim v2.0 and resampled onto the TK25 grid. Data is derived from interpolations of observed data, 
#' representative of 1970-2000.
#' @format A \code{data.frame} with 2268 observation and 69 variables.
#' @source Cite this dataset as: \itemize{\item Fick, S.E. and R.J. Hijmans, 2017. Worldclim 2: 
#' New 1-km spatial resolution climate surfaces for global land areas. International Journal of Climatology.}
#' This data has been downloaded from: \itemize{\item \url{https://worldclim.org/version1}}
NULL
