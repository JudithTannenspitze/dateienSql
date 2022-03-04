--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_KIND
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_KIND" AS 
function save_kind( pAlter number, pUmfangHaushalt varchar2,pAtsId number,pId number default null) return number;
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END WVG_PACK_KIND;

/
