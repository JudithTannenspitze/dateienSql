--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_KIND_ANTRAGSST
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_KIND_ANTRAGSST" AS 
function save_kind_antragsst (pAtsId number, pId number default null) return number;
END WVG_PACK_KIND_ANTRAGSST;

/
