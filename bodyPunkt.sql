--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_PUNKT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_PUNKT" 
AS
    function save_pntbzg (pPntProbez number, pPntAusb number, pPntRuhestand number, pPntVollzeit number,
                         pPntDienstbeg number, pPntFrist number, pPntTeilz number, pPntVers number, 
                         pPntJobvFr number, pPntAtsId number, pId number default null)
                         return number
    AS
        vid number;
        vergebnis number;
    BEGIN
        select count(*) into vergebnis from wvg_punkte where pnt_ats_id = pPntAtsId;
        if vergebnis = 0 then 
            insert into wvg_punkte 
                (pnt_versetzung, pnt_fruehere, pnt_ausbildung, pnt_ruhestand,pnt_teilzeit,pnt_beg_verhaeltnis, 
                pnt_befristung, pnt_vollzeit, pnt_probezeit, pnt_bew_bezirkswhg,pnt_schwerbehinderung, 
                pnt_entf_arbeitsplatz, pnt_gesu_gruende, pnt_whgskuendigung, pnt_sonstige_gruende,
                pnt_pflege_angeh, pnt_wohns_dt, pnt_verschiedengeschl,pnt_kd_dauerhaft_az,pnt_kd_teilweise_az
                , pnt_ats_id)
            values
                (pPntVers, pPntJobvFr, pPntAusb,  pPntRuhestand, pPntTeilz, pPntDienstbeg,pPntFrist, pPntVollzeit,pPntProbez,
                null,null,null,null, null, null, null,null,null,null,null,pPntAtsId) 
            returning id into vid;
        else 
            update wvg_punkte set 
                pnt_probezeit       = pPntProbez,
                pnt_ausbildung      = pPntAusb,
                pnt_ruhestand       = pPntRuhestand,
                pnt_vollzeit        = pPntVollzeit, 
                pnt_beg_verhaeltnis = pPntDienstbeg,
                pnt_befristung      = pPntFrist,
                pnt_teilzeit        = pPntTeilz,
                pnt_versetzung      = pPntVers,
                pnt_fruehere        = pPntJobvFr, 
                pnt_ats_id          = pPntAtsId
            where wvg_punkte.pnt_ats_id = pPntAtsId;
            vid := pId;
        end if;
        return vid;
    end;
    function save_pntpsh (pPntWhsDt number, pPntDhKd number, pPntTwKd number, pPntvdgeschlKd number, 
                           pPntAtsId number, pId number default null) return number
    AS
            vergebnis number;
            vid number;
    BEGIN 
        select count(*) into vergebnis from wvg_punkte where wvg_punkte.pnt_ats_id = pPntAtsId;
        if vergebnis = 0 then 
            insert into wvg_punkte 
                (pnt_versetzung, pnt_fruehere, pnt_ausbildung, pnt_ruhestand, pnt_teilzeit,
                pnt_beg_verhaeltnis, pnt_befristung, pnt_vollzeit, pnt_probezeit, pnt_bew_bezirkswhg,
                pnt_schwerbehinderung, pnt_entf_arbeitsplatz, pnt_gesu_gruende, pnt_whgskuendigung, 
                pnt_sonstige_gruende, pnt_pflege_angeh, pnt_wohns_dt, pnt_verschiedengeschl,pnt_kd_dauerhaft_az,
                pnt_kd_teilweise_az,pnt_ats_id)
            values 
                (null, null, null,null, null,null,null, null, null, null, null, null,null,null,null,null,
                pPntWhsDt, pPntvdgeschlKd, pPntDhKd,pPntTwKd, pPntAtsId) 
                returning id into vid;
        else 
            update wvg_punkte set 
                pnt_wohns_dt          = pPntWhsDt, 
                pnt_verschiedengeschl = pPntvdgeschlKd, 
                pnt_kd_dauerhaft_az   = pPntDhKd, 
                pnt_kd_teilweise_az   = pPntTwKd
            where wvg_punkte.pnt_ats_id = pPntAtsId;
            vid := pId;
            end if;
            return vid;
    end;
    function save_pntsag  (pPntBewBezirkswhg number, pPntSchwerbeh number, pPntEntfArbeit number, 
                        pPntGesuGr number, pPntWhskuend number, pPntSonstGr number, pPntPflegeAngeh number, 
                         pPntAtsId number,pId number default null) return number
    AS
        vergebnis number;
        vid number;
    BEGIN
        select count(*) into vergebnis from wvg_punkte where wvg_punkte.pnt_ats_id = pPntAtsId;
        if vergebnis = 0 then 
            insert into wvg_punkte 
                (pnt_versetzung, pnt_fruehere, pnt_ausbildung, pnt_ruhestand, pnt_teilzeit, 
                pnt_beg_verhaeltnis, pnt_befristung, pnt_vollzeit, pnt_probezeit, pnt_bew_bezirkswhg, 
                pnt_schwerbehinderung, pnt_entf_arbeitsplatz, pnt_gesu_gruende, pnt_whgskuendigung, 
                pnt_sonstige_gruende,pnt_pflege_angeh, pnt_wohns_dt, pnt_verschiedengeschl,pnt_kd_dauerhaft_az,
                pnt_kd_teilweise_az, pnt_ats_id) 
            values
            (null,null,null,null,null,null,null,null,null,pPntBewBezirkswhg, pPntSchwerbeh,pPntEntfArbeit,
            pPntGesuGr, pPntWhskuend, pPntSonstGr,pPntPflegeAngeh, null, null,null,null, 
            pPntAtsId) 
            returning id into vid;
        else 
            update wvg_punkte
            set 
                pnt_bew_bezirkswhg      = pPntBewBezirkswhg, 
                pnt_schwerbehinderung   = pPntSchwerbeh, 
                pnt_entf_arbeitsplatz   = pPntEntfArbeit, 
                pnt_gesu_gruende        = pPntGesuGr,
                pnt_whgskuendigung      = pPntWhskuend, 
                pnt_sonstige_gruende    = pPntSonstGr,
                pnt_pflege_angeh        = pPntPflegeAngeh
            where wvg_punkte.pnt_ats_id = pPntAtsId;
            vid := pId;
        end if;
        return vid;
    end;
end;

/
