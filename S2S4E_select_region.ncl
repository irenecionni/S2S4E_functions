      
;;#############################################################################
undef("select_region_939")
function select_region_939(region:string,lsdata:numeric)
;;
;; Arguments
;;    region: a string specifying the region to be selected.
;;
;; Return value
;;    An array with the region boundary as (lon1,lat1,lon2,lat2,lon3,lat3,lon4,lat4 ect)
;;    with the name of the region as a string attribute @name.
;;
;; Description
;;    Translates a region specification into lat/lon boundaries and a region
;;    name as an attribute.
;;
;; Modification history
begin

    funcname = "select_region_939"
    scriptname = "diag_scripts/lib/ncl/latlon.ncl"
    verbosity = stringtointeger(getenv("ESMValTool_verbosity"))
    enter_msg(scriptname, funcname, 10)

    if (region.eq."ALA") then
        region_array =(/(/255.000,   60.000/),\
                        (/191.978,   60.000/),\
                        (/191.978,   72.554/),\
                        (/255.000,   72.554/)/)
    end if
   if (region.eq."AMZ") then
          region_array =(/(/293.623,  -20.000/),\
                          (/280.271,  -1.239/),\
                          (/291.2,    11.439/),\
                          (/310.00,   11.439/),\
                          (/310.00,   -20.00/)/)
       end if
       if (region.eq."CAM") then
           region_array =(/(/291.2,  11.439/),\
                         (/280.271,    -1.239/),\
                         (/241.677,    28.566/),\
                         (/269.685,    28.566/)/)
       end if
       if (region.eq."CAS") then
           region_array =(/(/60.000,   30.000/),\
                           (/60.000,   50.000/),\
                           (/75.000,   50.000/),\
                           (/75.000,   30.000/)/)
       end if
       if (region.eq."CEU") then
           region_array =(/(/-10.000,    45.000/),\
                           (/-10.000,    48.000/),\
                           (/ 40.000,    61.320/),\
                           (/ 40.000,    45.000/)/)
       end if
       if (region.eq."CGI") then
          region_array =(/(/350.000,  50.000/),\
                          (/255.000,  50.000/),\
                          (/255.000,  85.000/),\
                          (/350.000,  85.000/)/)
       end if
       if (region.eq."CNA") then
          region_array =(/(/275.000,  50.000/),\
                          (/275.000,  28.566/),\
                          (/255.000,  28.566/),\
                          (/255.000,  50.000/)/)
       end if
       if (region.eq."EAF") then
          region_array =(/(/25.000,   -11.365/),\
                          (/25.000,   15.000/),\
                          (/51.990,   15.000/),\
                          (/51.990,   -11.365/)/)
       end if
       if (region.eq."EAS") then
          region_array =(/(/100.000,   20.000/),\
                          (/100.000,   50.000/),\
                          (/145.000,   50.000/),\
                          (/145.000,   20.000/)/)
       end if
       if (region.eq."ENA") then
          region_array =(/(/300.000,  25.000/),\
                          (/275.000,  25.000/),\
                          (/275.000,  50.000/),\
                          (/300.000,  50.000/)/)
       end if
       if (region.eq."MED") then
          region_array =(/(/350.000,  30.000/),\
                          (/350.000,  45.000/),\
                          (/40.000,  45.000/),\
                          (/40.000,  30.000/)/)
       end if
        if (region.eq."NAS") then
          region_array =(/(/40.000,    50.000/),\
                          (/40.000,    70.000/),\
                          (/180.000,   70.000/),\
                          (/180.000,   150.000/)/)
       end if
       if (region.eq."NAU") then
          region_array =(/(/110.000,   -30.000/),\
                          (/110.000,   -10.000/),\
                          (/155.000,   -10.000/),\
                          (/155.000,   -30.000/)/)
       end if
       if (region.eq."NEB") then
          region_array =(/(/326.000,   -20.000/),\
                          (/310.000,   -20.000/),\
                          (/310.000,    0.000/),\
                          (/326.000,    0.000/)/)
       end if
       if (region.eq."NEU") then
          region_array =(/(/350.000,   48.000/),\
                          (/350.000,   75.000/),\
                          (/40.000,   75.000/),\
                          (/40.000,   61.320/)/)
       end if
       if (region.eq."SAF") then
          region_array =(/(/350.000,   -35.000/),\
                          (/350.000,   -11.365/),\
                          (/308.01,    -11.365/),\
                          (/308.01,    -35.000/)/)
       end if
       if (region.eq."SAH") then
          region_array =(/(/340.000,  15.000/),\
                          (/340.000,  30.000/),\
                          (/ 40.000,  30.000/),\
                          (/ 40.000,  15.000/)/)
       end if
       if (region.eq."SAS") then
          region_array =(/(/60.000,   5.000/),\
                          (/60.000,   30.000/),\
                          (/100.000,  30.000/),\
                          (/100.000,  20.000/),\
                          (/95.000,   20.000/),\
                          (/95.000,   5.000/)/)
       end if
 if (region.eq."SAU") then
          region_array =(/(/110.000,   -50.000/),\
                          (/110.000,   -30.000/),\
                          (/180.000,   -30.000/),\
                          (/180.000,   -50.000/)/)
       end if
       if (region.eq."SSA") then
          region_array =(/(/320.624,   -20.000/),\
                          (/320.624,   -56.704/),\
                          (/292.652,   -56.704/),\
                          (/287.859,   -50.000/),\
                          (/293.623,   -20.000/)/)
       end if
       if (region.eq."SEA") then
          region_array =(/(/95.000,    -10.000/),\
                          (/95.000,    20.000/),\
                          (/155.000,   20.000/),\
                          (/155.000,   -10.000/)/)
       end if
       if (region.eq."TIB") then
          region_array =(/(/75.000,  30.000/),\
                          (/75.000,  50.000/),\
                          (/100.000,  50.000/),\
                          (/100.000,  30.000/)/)
       end if
       if (region.eq."WAF") then
          region_array =(/(/340.000,  -11.365/),\
                          (/340.000,  15.000/),\
                          (/25.000,   15.000/),\
                          (/25.000,   -11.365/)/)
       end if
       if (region.eq."WAS") then
          region_array =(/(/40.000,  15.000/),\
                          (/40.000,  50.000/),\
                          (/60.000,  50.000/),\
                          (/60.000,  15.000/)/)
       end if
       if (region.eq."WSA") then
                region_array =(/(/280.271,  -1.239/),\
                                (/293.623,  -20.000/),\
                                (/287.859,  -50.000/),\
                                (/292.652,  -56.704/),\
                                (/277.978,  -56.704/),\
                                (/277.978,  0.530/)/)
       end if

      if (region.eq."WNA") then
          region_array =(/(/255.000,  28.566/),\
                          (/230.000,  28.566/),\
                          (/230.000,  60.000/),\
                          (/255.000,  60.000/)/)
       end if      
        leave_msg(scriptname, funcname, 10)
        lat=lsdata&lat
        lon=lsdata&lon
        inout=new((/dimsizes(lsdata)/),"float")
        in=0
        inn=0      
        do ilat=0,dimsizes(lat)-1
           do ilon=0,dimsizes(lon)-1
              inou=gc_inout(lat(ilat), lon(ilon), region_array(:,1),region_array(:,0))
              if(inou.eq."True")
                inout(ilat,ilon)=1. ; all data inside the boundary are 1
                in=in+1
              end if
               inn=inn+1
           end do
        end do 
   
       delete(inou)
       return(inout)

end

;#############################################################################
;;#############################################################################
undef("area_operations")
function area_operations(field:numeric,
                         latmin[1]:numeric,
                         latmax[1]:numeric,
                         lonmin[1]:numeric,
                         lonmax[1]:numeric,
                         opt[1]:string,
                         l_wgt[1]:logical)
;;
;; Arguments
;;    field: a numeric array of rank at least 2; second-to-last and last.
;;          dimension must be lat and lon, respectively.
;;    latmin: minimum latitude boundary of the region to be selected.
;;    latmax: maximum latitude boundary of the region to be selected.
;;    lonmin: minimum longitude boundary of the region to be selected.
;;    lonmax: maximum longitude boundary of the region to be selected.
;;    opt: type of operation:
;;           "extract": extracts selected region.
;;           "average": averages over the selected region.
;;           "sum": integrate over the selected region.
;;    l_wgt: if True, calculates area-weighted average/sum (has no effect for
;;           opt = "extract").
;;
;; Return value
;;    An array of the same rank as field, of rank-1 or of rank-2, depending on
;;    opt and on the region boundaries.
;;
;; Description
;;    Extracts a selected region or point on a global map.
;;    Performs the (weighted) average over a selected region on a global map.
;;    Performs the (weighted) sum over a selected region on a global map.
;;
;; Caveats
;;    This function assumes that the input field is a global map.
;;    Mind the order for lonmin and lonmax (e.g., 60,120 is different from.
;;    120,60: the order is meant eastwards).
;;    To consider the global domain, use -90,90,0,360 as arguments.
;;    If lonmin is outside the field boundaries, it is assigned to 0.
;;    If lonmax is outside the field boundaries, it is assigned to max(lon).
;;    For latmin=latmax and lonmin=lonmax the single gridbox is extracted, no
;;    average/sum is possible in this case.
;;
;; Modification history
;;    20140116-A_righ_ma: written.
;;
local funcname, scriptname, verbosity, rank, dimnames, wgt, conwgt, f_latmin, \
    f_latmax, f_lonmin, f_lonmax, delta, idx_latmin, idx_latmax, latidx, \
    idx_lonmin, idx_lonmax, lonidx, subfield, subwgt, dnames, didx_r, didx_l, \
    norm
begin

    funcname = "area_operations"
    scriptname = "diag_scripts/lib/ncl/latlon.ncl"
    verbosity = stringtointeger(getenv("ESMValTool_verbosity"))
    enter_msg(scriptname, funcname, 6)

    ;; Check rank
    if (dimsizes(dimsizes(field)) .lt. 2) then
        error_msg("f", scriptname, funcname, "rank of input field <2")
    end if

    ;; Check dimensions
    rank = dimsizes(dimsizes(field))
  dimnames = getvardims(field)
    if (dimnames(rank - 1) .ne. "lon") then
        error_msg("f", scriptname, funcname, "the rightmost dimension " + \
                  "of the input field must be lon")
    end if
    if (dimnames(rank - 2) .ne. "lat") then
        error_msg("f", scriptname, funcname, "the second rightmost " + \
                  "dimension of the input field must be lat")
    end if
    delete(dimnames)

    ;; Check that grid is regular
    if (dimsizes(dimsizes(field&lat)) .ne. 1 .or. \
        dimsizes(dimsizes(field&lon)) .ne. 1) then
        error_msg("f", scriptname, funcname, "irregular grids not supported")
    end if

    ;; Calculate weights
    wgt = map_area(field&lat, field&lon)
    if (.not.l_wgt) then
        wgt = 1.
    end if

    ;; Conform weights and filter for missing values in the input field
    if (rank.eq.4) then
        conwgt = conform(field, wgt, (/2, 3/))
    end if
    if (rank.eq.3) then
        conwgt = conform(field, wgt, (/1, 2/))
    end if
    if (rank.eq.2) then
        conwgt = wgt
    end if
    conwgt = where(ismissing(field), conwgt@_FillValue, conwgt)
    copy_VarCoords(field, conwgt)
    delete(wgt)

    ;; Copy arguments to local (swap lat limits if necessary)
    f_latmin = todouble(min((/latmin, latmax/)))
    f_latmax = todouble(max((/latmin, latmax/)))
    f_lonmin = todouble(where(lonmin .lt. 0., lonmin + 360., lonmin))
    f_lonmax = todouble(where(lonmax .lt. 0., lonmax + 360., lonmax))

    ; If single gridbox lon = 360, replace with 0 to account for periodicity
    if (f_lonmin .eq. 360 .and. f_lonmax .eq. 360) then
        f_lonmin = 0.d0
        f_lonmax = 0.d0
    end if

    ;; Find nearest points to latitude boundaries
    ;; In the (unlikely) case that the selected boundary point is at the
    ;; midpoint between two gridboxes, ind will return two points.
    ;; The minimum index (= minumum value) is chosen in such case,
    ;; consistently with NCL coordinate subscripting
    ;; http://www.ncl.ucar.edu/Document/Language/subscript_coord.shtml
    delta = abs(field&lat - f_latmin)
    idx_latmin = min(ind(delta .eq. min(delta)))
    delta = abs(field&lat - f_latmax)
    idx_latmax = min(ind(delta .eq. min(delta)))
    delete(delta)
    if (ismissing(idx_latmin) .or. ismissing(idx_latmax)) then
        error_msg("f", scriptname, funcname, "no values found in the " + \
                  "given latitude range")
 end if
    if (latmin .eq. latmax .and. idx_latmin .ne. idx_latmax) then
        error_msg("f", scriptname, funcname, "multiple indexes found " + \
                  "for single gridbox latitude selection")
    end if

    ;; Define latitude indexes
    latidx = ispan(idx_latmin, idx_latmax, 1)  ; array of indexes
    delete(idx_latmin)
    delete(idx_latmax)

    ;; Find neartest points to longitude boundaries
    ;; In the (unlikely) case that the selected boundary point is at the
    ;; midpoint between two gridboxes, ind will return two points.
    ;; The minimum index (= minumum value) is chosen in such case,
    ;; consistently with NCL coordinate subscripting
    ;; http://www.ncl.ucar.edu/Document/Language/subscript_coord.shtml
    if (f_lonmin.gt.max(field&lon)) then
        idx_lonmin = 0
    else
        delta = abs(field&lon - f_lonmin)
        idx_lonmin = min(ind(delta .eq. min(delta)))
        delete(delta)
    end if
    if (f_lonmax.gt.max(field&lon)) then
        idx_lonmax = dimsizes(field&lon) - 1
    else
        delta = abs(field&lon - f_lonmax)
        idx_lonmax = min(ind(delta .eq. min(delta)))
        delete(delta)
    end if
    if (ismissing(idx_lonmin) .or. ismissing(idx_lonmax)) then
        error_msg("f", scriptname, funcname, "no values found in the " + \
                  "given longitude range")
    end if
    ;; Special case: single gridbox selection beteen max(field&lon) and 0
    if (lonmin .eq. lonmax .and. lonmin.gt.max(field&lon)) then
        idx_lonmin = where(abs(360. - lonmin) .lt. \
                           abs(max(field&lon) - lonmin), \
                           0, dimsizes(field&lon) - 1)
        idx_lonmax = idx_lonmin
    end if
    if (lonmin .eq. lonmax .and. idx_lonmin .ne. idx_lonmax) then
        error_msg("f", scriptname, funcname, "multiple indexes found " + \
                  "for single gridbox longitude selection")
    end if

    ;; Define longitude indexes
    if (idx_lonmin .le. idx_lonmax) then  ; Greenwich outside
        lonidx = ispan(idx_lonmin, idx_lonmax, 1)
    else  ; Greenwich inside
        lonidx = array_append_record( \
            ispan(idx_lonmin, dimsizes(field&lon) - 1, 1), \
            ispan(0, idx_lonmax, 1), 0)
    end if
    delete(idx_lonmin)
    delete(idx_lonmax)
;; Extract region
    if (rank .eq. 4) then
        subfield = field(:, :, latidx, lonidx)
        subwgt = conwgt(:, :, latidx, lonidx)
    end if
    if (rank .eq. 3) then
        subfield = field(:, latidx, lonidx)
        subwgt = conwgt(:, latidx, lonidx)
    end if
    if (rank .eq. 2) then
        subfield = field(latidx, lonidx)
        subwgt = conwgt(latidx, lonidx)
    end if
    delete(conwgt)

    if (opt .eq. "extract") then
        leave_msg(scriptname, funcname, 6)
        return(subfield)
    end if

    ;; Find dimensions to be averaged or summed
    dnames = getVarDimNames(subfield)
    didx_r = ind(dnames.eq."lat" .or. dnames.eq."lon")
    didx_l = ind(dnames.ne."lat" .and. dnames.ne."lon")
    if (all(ismissing(didx_r))) then
        error_msg("f", scriptname, funcname, "cannot perform " + \
                  "average/sum on single gridcell, use the extract option")
    end if

    ;; Normalize weights
    if (opt .eq. "average") then
        if (dimsizes(didx_r).eq.dimsizes(dnames)) then
            subwgt = subwgt / sum(subwgt)
        else
            norm = dim_sum_n_Wrap(subwgt, didx_r)
            subwgt = subwgt / conform(subwgt, norm, didx_l)
        end if
    end if

    ;; Calculate average/sum. The same code applies, as the only difference
    ;; is in the normalization of the weights, which is calculated above
    ;; only for opt="average"
    if (opt .eq. "average" .or. opt .eq. "sum") then
        subfield = subfield * subwgt
        if (dimsizes(didx_r).eq.dimsizes(dnames)) then
            out = dim_sum_Wrap(dim_sum_Wrap(subfield))
        else
            out = dim_sum_n_Wrap(subfield, didx_r)
        end if
        leave_msg(scriptname, funcname, 6)
        return(out)
    end if
  error_msg("f", scriptname, funcname, "unrecognized option " + opt)

end

