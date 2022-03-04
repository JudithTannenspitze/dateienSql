--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package FUNKTIONEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."FUNKTIONEN" AS 
--function ermittlePunktdatensatz (paramid number) return number;
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

function ermittleWhgAstDatensatz(ast_id number, w_id number) return number;
function ermittleSummbzg (paramid number) return number;
function ermittleSummsag (paramid number) return number;
function ermittleSummpsh (paramid number) return number;
function ermittleAnzDatenBetriebsz(pAtsId number) return number;
function ermittleAnzDatenPH (pAtsId number) return number;
function ermittleAnzDatenSozAngel(pAtsId number) return number;
function ermittleAnzDatenKind (pAtsId number) return number;
function ermittleAnzDatenEinkommen (pAtsId number) return number;
function ermittleSumTotal (paramid number) return number;
function ermittleBetrEinkom (pId number) return number;
function ermittleZeichenkette (pId number) return varchar2;
END FUNKTIONEN;

/
