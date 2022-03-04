--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_SOZANGEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_SOZANGEL" 
AS
    function save_sozangel (pSonstGr varchar2, pSonstGrTxt varchar2, pBewBezirkswhg varchar2, 
                            pSchwerbeh varchar2, pGdhlGr varchar2, pWhgkuend varchar2, pGrWhgkuend varchar2,
                            pPflegeAngeh varchar2, pEntfArbeit number,pAtsId number, pId number default null) 
                            return number
    AS
        vid number;
    BEGIN
        if pId is null then 
            insert into wvg_soziale_angelegenheit 
            (sag_sonstige_gruende, sag_sonstige_gr_txt,sag_bew_bezirkswhg, sag_schwerbehinderung, sag_gdhl_gruende,
            sag_wohnungskuendigung,sag_gr_whgkuendigung, sag_pflege_angeh, sag_entf_arbeitsplatz, sag_ats_id)
            values 
            (pSonstGr, pSonstGrTxt, pBewBezirkswhg, pSchwerbeh, pGdhlGr, pWhgkuend, pGrWhgkuend, pPflegeAngeh, 
            pEntfArbeit, pAtsId) returning id into vid;
        else 
            update wvg_soziale_angelegenheit set
                sag_sonstige_gruende = pSonstGr,
                sag_sonstige_gr_txt = pSonstGrTxt,
                sag_bew_bezirkswhg = pBewBezirkswhg,
                sag_schwerbehinderung = pSchwerbeh,
                sag_gdhl_gruende = pGdhlGr, 
                sag_wohnungskuendigung = pWhgkuend, 
                sag_gr_whgkuendigung = pGrWhgkuend,
                sag_pflege_angeh = pPflegeAngeh,
                sag_entf_arbeitsplatz = pEntfArbeit,
                sag_ats_id = pAtsId
where id = pId;
vid := pId;
end if;
return vid;
end;
end;

/
