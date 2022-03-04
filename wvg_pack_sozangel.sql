--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_SOZANGEL
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_SOZANGEL" AS 

function save_sozangel (pSonstGr varchar2, pSonstGrTxt varchar2, pBewBezirkswhg varchar2, 
pSchwerbeh varchar2, pGdhlGr varchar2, pWhgkuend varchar2, pGrWhgkuend varchar2, pPflegeAngeh varchar2, 
pEntfArbeit number,pAtsId number, pId number default null) return number;
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END WVG_PACK_SOZANGEL;

/
