--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_WOHNUNG
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_WOHNUNG" AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
function save_wohnung( pNrAush number, pId number default null) return number;
END WVG_PACK_WOHNUNG;

/
