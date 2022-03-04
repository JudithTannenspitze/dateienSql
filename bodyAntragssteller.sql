--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_ANTRAGSSTELLER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_ANTRAGSSTELLER" 
AS
    function save_antragsst (pEmailDienst varchar2, pEmailPriv varchar2, pVorn varchar2, pNachn varchar2, pTelPriv varchar2, pTelDienst varchar2, pBeruf varchar2, pGeburtsdt date, pWohno varchar2, pPLZ varchar2,pStrasse varchar2, pHsnr varchar2,  pId number default null) return number
    AS
        vid number;
    BEGIN
        if pId is null then 
            insert into wvg_antragssteller
                (ats_email_dienstl, ats_email_privat, ats_vorname, ats_name, ats_telef_privat, ats_telef_dienstl, 
                ats_berufsbez, ats_geburtsdatum, ats_wohnort, ats_plz, ats_strasse, ats_hausnummer) 
            values 
                (pEmailDienst, pEmailPriv, pVorn, pNachn, pTelPriv, pTelDienst, pBeruf, pGeburtsdt,
                pWohno, pPLZ, pStrasse, pHsnr)
            returning id into vid;
        else 
            update wvg_antragssteller
            set 
                ats_email_dienstl   = pEmailDienst, 
                ats_email_privat    = pEmailPriv,
                ats_vorname         = pVorn, 
                ats_name            = pNachn,
                ats_telef_privat    = pTelPriv, 
                ats_telef_dienstl   = pTelDienst, 
                ats_berufsbez       = pBeruf, 
                ats_geburtsdatum    = pGeburtsdt,
                ats_plz             = pPLZ,
                ats_wohnort         = pWohno, 
                ats_strasse         = pStrasse, 
                ats_hausnummer      = pHsnr
            where id = pId;
            vid := pId;
        end if;
        return vid;
    end;
END;

/
