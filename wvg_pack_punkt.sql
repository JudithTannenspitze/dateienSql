--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_PUNKT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_PUNKT" AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

function save_pntbzg (pPntProbez number, pPntAusb number, pPntRuhestand number, pPntVollzeit number,
pPntDienstbeg number, pPntFrist number, pPntTeilz number, pPntVers number, pPntJobvFr number,
 pPntAtsId number, pId number default null)return number;
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
function save_pntpsh (pPntWhsDt number, pPntDhKd number, pPntTwKd number, pPntvdgeschlKd number, 
pPntAtsId number, pId number default null) return number;
function save_pntsag  (pPntBewBezirkswhg number, pPntSchwerbeh number, pPntEntfArbeit number, pPntGesuGr number, 
pPntWhskuend number, pPntSonstGr number, pPntPflegeAngeh number,  
pPntAtsId number,pId number default null) return number;

END WVG_PACK_PUNKT;

/
