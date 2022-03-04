--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_PH
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_PH" AS 
function save_ph (pWohnsitzDt varchar2, pKdVdgeschl varchar2, pKdDauerhaftAz number, pTeilweiseAz number, pAtsId number, pId number default null) return number;
  /* TODO enter package declarations (types, exceptions, methods etc) here */ 

END WVG_PACK_PH;

/
