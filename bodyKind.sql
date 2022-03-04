--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_KIND
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_KIND" 
AS
    function save_kind( pAlter number, pUmfangHaushalt varchar2,pAtsId number,pId number default null) return number
    AS
        vid number;
    BEGIN
        if pId is null then
            insert into  wvg_kind 
            (kin_alter,kin_umfang_haushalt,kin_ats_id)
             values 
             (pAlter, pUmfangHaushalt, pAtsId)
            returning id into vid;
        else
            update wvg_kind
            set
                kin_alter           = pAlter,
                kin_umfang_haushalt = pUmfangHaushalt, 
                kin_ats_id          = pAtsId  
            where id = pId;
            vid := pId;
        end if;
        
        return vid;
     end;
 end;

/
