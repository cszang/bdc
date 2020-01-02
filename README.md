bdc - Bavarian Data Cube
================

## Installation

You can install bdc from github with:

``` r
# Install remotes if not available
if(!"remotes" %in% installed.packages()[,"Package"]) install.packages("remotes")

# Install bdc package from Github
remotes::install_github("RS-eco/bdc", build_vignettes = T)
```

After installation, simply load the `bdc` package:

``` r
library(bdc)
```

The individual datasets can then be loaded, by:

``` r
# Elevation & Terrain (SRTM)
data("alt_bav_tk25")

# Outline of Bavaria (GADM)
data("bavaria")

# BioTime data for Germany
data("biotime_deu")

# BirdLife, IUCN and GARD range data
data("amphibians_bav")
data("bird_bav")
data("gard_reptiles_bav")
data("mammals_bav")
data("odonata_bav")
data("reptiles_bav")

# Bird range data from the LFU
data("bird_bva_shape")

# Carbon stock data
data("carbon_bav")

# CCI land cover data
data("cci_bav_tk25")

# Chelsa climate data
data("chelsa_bav_tk25")

# Euro-cordex climate simulations
data("cordex_bioclimAdjust_30yr_bav")
data("cordex_prAdjust_bav")
data("cordex_tasAdjust_bav")
data("cordex_tasminAdjust_bav")
data("cordex_tasmaxAdjust_bav")

# In addition, the cordex_bioclim_eur.csv.xz data is available from:
# https://syncandshare.lrz.de/dl/fiUoJTtNcAahKkK2Q3wLEDKK

# And the cordex_bioclim_bav_tk25.csv.xz file is available from:
# https://syncandshare.lrz.de/dl/fiUnkSHdGhRTyjsgPonU4sYE

# Corine land-cover and land cover change
data("corine_cha_bav_tk25") # Land-cover change
data("corine_lc_bav_tk25") # Land cover

# Diva shapefiles for Germany
data("diva_cover_deu") # Land-cover data
data("diva_pop_deu") # Population data
data("diva_rails_deu") # Railway tracks
data("diva_roads_deu") # Roads
data("diva_water_areas_deu") # Lakes
data("diva_water_lines_deu") # Rivers

# EuroLST Land surface temperature
data("eurolst_bav_tk25")

# EWEMBI daily temperature and precipitation
data("ewembi_bav")

# GIMMS3g NDVI data
data("gimms3g_v0_bav")
data("gimms3g_v1_bav")

# Globcover land cover
data("globcover_bav_tk25")

# Human footprint
data("hfp_1993_v3_bav")
data("hfp_2009_v3_bav")

# Important bird areas
data("iba_bav")

# ISIMIP2b climate and land-use
data("isimip_bio_bav_tk25")
data("isimip_lu_bav_tk25")

# KK09, KK10 data
data("kk09_bav")
data("kk10_bav")

# Lakes & Rivers
data("lakes_points_bav")
data("lakes_poly_bav")
data("rivers_bav")

# Merraclim climate
data("merraclim_10m_bav_tk25")
data("merraclim_2.5m_bav_tk25")
data("merraclim_5m_tk25")

# MODIS land-cover
data("modis_lc_bav_tk25")

# MODIS Land surface temperature
data("modis_lst_bav_tk25")

# Protected areas
data("pa_bav")
data("pa_bav_tk25")

# Plot coordinates
data("plot_coords_bav")

# Predicts data
data("predicts_deu")

# Tandem-X Forest/Non-forest
data("tdm_fnf_bav")

# TK25 grid
data("tk25_grid")

# Worldclim v1.4
data("wc1.4_10m_bav_tk25")
data("wc1.4_2.5m_bav_tk25")
data("wc1.4_30s_bav_tk25")
data("wc1.4_5m_bav_tk25")

# Worldclim v2.0
data("wc2.0_10m_bav_tk25")
data("wc2.0_2.5m_bav_tk25")
data("wc2.0_30s_bav_tk25")
data("wc2.0_5m_bav_tk25")
```

**Note:** The code of how the datasets were created can be found in the
data-raw folder.

<!--
\begin{frame}
\frametitle{Climate data - Current}
\large{
\begin{itemize}
\item Worldclim v1.4, 1960 - 1990
\vspace{1ex}
\item Worldclim v2, 1970 - 2000, climatologies
\vspace{1ex}
\item Chelsa, 1979 - 2013, monthly %What is the time frame of the climatologies?
\vspace{1ex}
\item MerraClim, 1980, 1990, 2000 %10 year time frames? What is the difference between min, max, average?
\vspace{1ex}
\item EWEMBI, 1979 - 2016, daily
\vspace{1ex}
\item Euro-Cordex, 1950 - 2100  , monthly
\vspace{1ex}
\item EuroLST, ..., 
\vspace{1ex}
\item MODIS LST, ..., monthly
\end{itemize}
}
All products provide tmin, tmax, tmean, prec. Some products also provide additional variables, i.e. wind speed, humidity, ...
\end{frame}
% Is there a study that shows how often certain products have been used in the past?

\begin{frame}
\frametitle{Climate data - Future}
\large{
\begin{itemize}
\item Worldclim v1.4
\vspace{1ex}
\item Worldclim v2 - not yet available
\vspace{1ex}
\item Chelsa
\vspace{1ex}
\item ISIMIP2b
\vspace{1ex}
\item Euro-Cordex
\end{itemize}
}
Currently all based on CMIP5, but CMIP6 for most of these products is in progress.
\end{frame}

\begin{frame}
\frametitle{Land-cover data}
\large{ 
\begin{itemize}
\item MODIS Land-cover: 600 m, global,
\vspace{1ex}
\item Corine Land-cover/Change: 500 m, Europe
\vspace{1ex}
\item CCI Land-cover: ... m, global
\vspace{1ex}
\item Globcover: ... m, global
\end{itemize}
}
All land-cover data is based on real observations, as far as I know no projections of future land-cover are currently available.
\end{frame}
% Also mention forest layer, human settlement layer, urban data from DLR!
% Change to table with table headers!!! Spatial resolution, Spatial extent, Temporal resolution, Temporal coverage, ...
%GLCC???/ Product that Italian guys use!!!

%Also talk about land-use (ISIMIP2b, Hyde, ...)
\begin{frame}
\frametitle{Land-use data}
\large{
\begin{itemize}
\item ISIMIP2b
\vspace{1ex}
\item Hyde
\vspace{1ex}
\item 
\vspace{1ex}
\item 
\end{itemize}
}
% Talk about current and future (Scenarios, ...)
\end{frame}

\begin{frame}
\frametitle{Methods}
\large{
\begin{itemize}
\item Compile data and subset by outline of Bavaria
\vspace{1ex}
\item Resample data to resolution of biodiversity data (TK25)
\vspace{1ex}
\item Store data in R package (see https://github.com/RS-eco/bdc)
\vspace{1ex}
\item Create Shiny app for on-the-fly visualisation
\vspace{1ex}
\item Visual and statistic comparison of the different data sources
\vspace{1ex}
\item ...
\end{itemize}
}
\end{frame}
-->
