load "shapefile_utils.ncl"
;this file needs to be downloaded from https://www.ncl.ucar.edu/Applications/Scripts/shapefile_utils.ncl
;======================================================================
undef("select_country")
function select_country(shp_fname:string,lsdata:numeric)
begin
;---Name of shapefile containing the country  outlines: to be downloaded in https://gadm.org
   print_shapefile_info(shp_fname)
;---Name of file to write mask to or to read mask from.

     tas_1=lsdata
     tas=lonFlip(tas_1)
     opt             = True
     opt@return_mask = True
     opt@debug       = True
     usa_mask        = shapefile_mask_data(tas,shp_fname,opt)
;-------------------------------------------------------------------
   umask = where(usa_mask.eq.1,tas,tas@_FillValue)
   copy_VarMeta(tas,umask)
   return (umask)
end 
