--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_WOHNUNG_ANTRAGSST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_WOHNUNG_ANTRAGSST" AS 
function save_whgats ( pBeantragt varchar2, pBesichtigt varchar2, pWhgId number, 
pAtsId number, pId number default null) return number;
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END WVG_pack_WOHNUNG_ANTRAGSST;

/
