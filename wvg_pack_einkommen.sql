--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_EINKOMMEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_EINKOMMEN" AS 
function save_einkommen(pEinkPers1 number, pEinkPers2 number, pEinkPers3 number, pEinkPers4 number, pSonstEink number, pZahlpfl number, pBetrZinstilg number, pAtsId number, pId number default null) return number;
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END WVG_PACK_EINKOMMEN;

/
