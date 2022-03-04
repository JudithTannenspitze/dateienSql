--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_PH
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_PH" 
AS
    function save_ph (pWohnsitzDt varchar2, pKdVdgeschl varchar2, pKdDauerhaftAz number, pTeilweiseAz number,
    pAtsId number, pId number default null) return number
    AS
        vid number;
    BEGIN
        if pId is null then
            insert into wvg_personenhaushalt 
                (psh_wohnsitz_dt, psh_kd_vdgeschl, psh_kd_dauerhaft_az,
                psh_kd_teilweise_az,psh_ats_id) 
            values (pWohnsitzDt, pKdVdgeschl, pKdDauerhaftAz, pTeilweiseAz,  pAtsId)
            returning id into vid;
        else 
            update wvg_personenhaushalt set
                psh_wohnsitz_dt = pWohnsitzDt, 
                psh_kd_vdgeschl = pKdVdgeschl, 
                psh_kd_dauerhaft_az = pKdDauerhaftAz, 
                psh_kd_teilweise_az = pTeilweiseAz,
                psh_ats_id = pAtsId
            where id = pId;
            vid := pId;
        end if;
        return vid;
    end;
 end;

/
