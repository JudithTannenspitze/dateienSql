--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_KIND_ANTRAGSST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_KIND_ANTRAGSST" 
AS
    function save_kind_antragsst (pAtsId number, pId number default null) return number
    AS
        vid number;
        vergebnis number;
    BEGIN
        select count(*) into vergebnis from wvg_kind_antragsst ka, wvg_antragssteller ast, wvg_kind k 
        where ka.kda_ats_id = pAtsId and ka.kda_kd_id = pId;
        if vergebnis = 0 then
            insert into wvg_kind_antragsst (kda_ats_id,kda_kd_id) 
            values (pAtsId, pId) returning id into vid;
            vid := pId;
        end if;
         return vid;
    end;
 end;

/
