--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_ANTRAGSSTELLER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_ANTRAGSSTELLER" AS 
function save_antragsst (pEmailDienst varchar2, pEmailPriv varchar2, 
pVorn varchar2, pNachn varchar2, pTelPriv varchar2, pTelDienst varchar2, pBeruf varchar2, pGeburtsdt date,
pWohno varchar2, pPLZ varchar2,pStrasse varchar2, pHsnr varchar2,  pId number default null) return number;
 

END WVG_PACK_ANTRAGSSTELLER;

/
