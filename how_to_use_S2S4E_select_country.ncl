load "S2S4E_select_country.ncl"
;======================================================
begin 
   country_code="AUT"
   dir="my_dir"
   shp_fname = dir+"/gadm36_"+country_code+"_shp/gadm36_"+country_code+"_0.shp"
   print( shp_fname)
   a = addfile("my_file.nc","r")  ; example of file to be masked
   tas_1 = a->my_2Dvar
   tas=lonFlip(tas_1) ;lon field from -180 to 180

   umask=select_country(shp_fname,tas)
   minlon = -10.
   maxlon =30.
   minlat = 30.
   maxlat = 80.


;---Start the graphics.
   wks = gsn_open_wks("ps", country_code+"_plot")  ; send graphics to PNG file

   res                       = True     ; plot mods desired
   res@gsnMaximize           = True
   res@gsnDraw               = False
   res@gsnFrame              = False

   res@mpOutlineOn           = False
   res@cnFillOn              = True     ; turn on color fill
   res@cnLinesOn             = False    ; turn off contour lines
   res@cnLineLabelsOn        = False    ; turn off contour line labels
   res@lbLabelBarOn          = False    ; will turn on in panel

;   res@mpDataBaseVersion     = "HighRes"
   res@mpMinLonF             = minlon
   res@mpMaxLonF             = maxlon
   res@mpMinLatF             = minlat
   res@mpMaxLatF             = maxlat
   res@mpCenterLonF          = (minlon+maxlon)/2.

;---Be sure to use same levels for both plots
   mnmxint = nice_mnmxintvl( min(tas), max(tas), 25, False)
   res@cnLevelSelectionMode        = "ManualLevels"
   res@cnMinLevelValF              = mnmxint(0)
   res@cnMaxLevelValF              = mnmxint(1)
   res@cnLevelSpacingF             = mnmxint(2)

;---Create (but don't draw) both plots
   res@tiMainString = "Original data"
   plot_orig = gsn_csm_contour_map(wks,tas,res)

   res@tiMainString = "Masked data from " +country_code 
   plot_mask = gsn_csm_contour_map(wks,umask,res)

   ;if(ADD_LATLON_POINTS) then
;---Set up a resource list to attach the grid points as filled dots
   ;  mkres1                 = True
   ;  mkres1@gsnCoordsAttach = True
   ;  gsn_coordinates(wks,plot_orig,tas,mkres1)

    ; mkres2                 = True
    ; mkres2@gsnCoordsAttach = True
    ; mkres2@gsnCoordsNonMissingColor = "black"
  ;mkres2@gsnCoordsMissingColor    = "red"
   ;  gsn_coordinates(wks,plot_mask,umask,mkres2)
  ; end if

   ;if(ADD_SHAPEFILE_OUTLINES) then
     lnres  = True
     poly_orig = gsn_add_shapefile_polylines(wks,plot_orig,shp_fname,lnres)
     poly_mask = gsn_add_shapefile_polylines(wks,plot_mask,shp_fname,lnres)
   ;end if

;---Draw both plot in a panel.
   pres                  = True
   pres@gsnMaximize      = True
   pres@gsnPanelLabelBar = True
   pres@pmLabelBarWidthF = 0.8

   gsn_panel(wks,(/plot_orig,plot_mask/),(/2,1/),pres)

end 

