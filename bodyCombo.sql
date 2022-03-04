--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_COMBO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_COMBO" 
AS
    function save_combo ( pWert varchar2, pArt varchar2, pAktiv varchar2, pRueck varchar2, 
                        pId number default null) return number
    AS
        vid number;
    BEGIN
        if pId is null then
            insert into wvg_combo 
                (cbo_wert, cbo_art, cbo_aktiv, cbo_rueck, cbo_id)
            values 
                (pWert,pArt,pAktiv, pRueck, pId)
            returning id into vid;
        else 
            update wvg_combo
            set 
                cbo_wert    = pWert, 
                cbo_art     = pArt,
                cbo_aktiv   = pAktiv,
                cbo_rueck   = pRueck
            where id=pId;
            vid := pId;
        end if;
        return vid;
    end;
end;

/
