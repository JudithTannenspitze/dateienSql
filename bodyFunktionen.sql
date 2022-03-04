--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body FUNKTIONEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."FUNKTIONEN" as 
function ermittleZeichenkette (pId number) return varchar2
AS
vsumme varchar2(255);
vsubstring1 varchar2(255);
vsubstring2 varchar2(255);

begin 
select utl_raw.cast_to_varchar2(dbms_lob.substr(fil_file_blob)) into vsumme from wvg_files where id = pId;
update wvg_files set fil_filename = vsumme where id = pId;
select substr (fil_filename,instr(fil_filename,'/')+1),length(fil_filename) into vsubstring1, vsubstring2 from wvg_files where id = pId;
update wvg_files set fil_filename = vsubstring1  where id = pId;
return vsumme;
end;
function ermittleWhgAstDatensatz(ast_id number, w_id number) return number
AS
v_ergebnis number;
BEGIN
select count(*) into v_ergebnis from wvg_antragssteller ast, wvg_wohnung_antragssteller wa, wvg_wohnung w where wa.wha_whg_id = w.id and wa.wha_ats_id = ast.id and w.id =w_id and ast.id = ast_id;
return v_ergebnis;
end;
function ermittleSummbzg (paramid number) return number
AS 
v_summe number;
BEGIN
select sum(COALESCE(pnt_teilzeit,0)) + sum(COALESCE(pnt_vollzeit,0)) + sum(COALESCE(pnt_versetzung,0)) + sum(COALESCE(pnt_befristung,0)) + sum(COALESCE(pnt_fruehere,0)) + sum(COALESCE(pnt_beg_verhaeltnis,0)) + sum(COALESCE(pnt_probezeit,0)) into v_summe from wvg_punkte where id=paramid;
--select sum(pnt_ausbildung + pnt_befristung + pnt_ruhestand + pnt_fruehere + pnt_teilzeit + pnt_beg_verhaeltnis + pnt_vollzeit + pnt_probezeit )  into v_summe from wvg_punkte where id = paramid;
return v_summe;
end;
function ermittleSummsag (paramid number) return number
AS 
summe_sag number;
BEGIN 
--select sum(pnt_bew_bezirkswhg + pnt_gesu_gruende + pnt_schwerbehinderung + pnt_entf_arbeitsplatz + pnt_pflege_angeh + pnt_whgskuendigung + pnt_sonstige_gruende) into summe_sag from wvg_punkte where id = paramid;
select sum(COALESCE(pnt_bew_bezirkswhg,0)) + sum(COALESCE(pnt_schwerbehinderung,0)) + sum (COALESCE(pnt_pflege_angeh,0)) + sum(COALESCE(pnt_sonstige_gruende,0))+ sum(COALESCE(pnt_gesu_gruende,0)) + sum(COALESCE(pnt_entf_arbeitsplatz,0)) + sum (COALESCE(pnt_whgskuendigung,0)) into summe_sag from wvg_punkte where id = paramid;

return summe_sag;
end;
function ermittleSummpsh (paramid number) return number
AS 
summe_psh number;
BEGIN
select sum(COALESCE(pnt_wohns_dt,0)) + sum(COALESCE(pnt_verschiedengeschl,0)) + sum (COALESCE(pnt_kd_dauerhaft_az,0)) + sum(COALESCE(pnt_kd_teilweise_az,0)) into summe_psh from wvg_punkte where id=paramid;
return summe_psh;
end;
function ermittleBetrEinkom (pId number) return number
AS 
uebriger_betr number;
BEGIN
select sum (COALESCE(ek_eink_pers_1,0) + COALESCE(ek_eink_pers_2,0) 
+ COALESCE(ek_eink_pers_3,0) + COALESCE (ek_eink_pers_4,0)+ COALESCE(ek_sonst_eink,0)) -  min(ek_zahlungspflicht) 
into uebriger_betr from wvg_einkommen where id = pId;
update wvg_einkommen set ek_betr_zinstilg = uebriger_betr where id = pId;
return uebriger_betr;
end;
function ermittleSumTotal (paramid number) return number
AS
summe_total number;
BEGIN
select sum(COALESCE(funktionen.ermittleSummbzg(paramid),0) + COALESCE(funktionen.ermittleSummsag(paramid),0) + COALESCE(funktionen.ermittleSummpsh(paramid),0)) into summe_total from wvg_punkte where id=paramid;
return summe_total;
end;
function ermittleAnzDatenBetriebsz(pAtsId number) return number
AS 
anzahlDatensaetze number;
BEGIN
select count(*) into anzahlDatensaetze from wvg_betriebszugehoerigkeit where bzg_ats_id = pAtsId;
return anzahlDatensaetze;
end;
function ermittleAnzDatenPH (pAtsId number) return number
AS 
anzahlDatensaetze number;
BEGIN
select count(*) into anzahlDatensaetze from wvg_personenhaushalt where psh_ats_id = pAtsId;
return anzahlDatensaetze;
end;
function ermittleAnzDatenSozAngel(pAtsId number) return number
AS
anzahlDatensaetze number;
BEGIN
select count(*) into anzahlDatensaetze from wvg_soziale_angelegenheit where sag_ats_id = pAtsId;
return anzahlDatensaetze;
end;
function ermittleAnzDatenKind (pAtsId number) return number
AS
anzahlDatensaetze number;
BEGIN
select count(*) into anzahlDatensaetze from wvg_kind  where kin_ats_id = pAtsId;
return anzahlDatensaetze;
end;
function ermittleAnzDatenEinkommen (pAtsId number) return number
AS 
anzahlDatensaetze number;
BEGIN
select count(*) into anzahlDatensaetze from wvg_einkommen  where ek_ats_id = pAtsId;
return anzahlDatensaetze;
end;

end;

/
