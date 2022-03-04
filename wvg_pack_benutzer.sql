--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_BENUTZER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_BENUTZER" AS 
function save_benutzer(pUsernam varchar2, pPassw varchar2, pRight varchar2, pGesperrt varchar2, pFaillogon varchar2, pEmail varchar2, pId number default null) return number;
  /* TODO enter pa
END BENUTZER;ckage declarations (types, exceptions, methods etc) here */ 
end;

/
