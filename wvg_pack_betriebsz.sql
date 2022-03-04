--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_BETRIEBSZ
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_BETRIEBSZ" AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
function save_betriebsz (pAktOrt varchar2, pBishOrt varchar2, pInAusb varchar2, pEndAusb date, pFruehere varchar2, pStaFruehere date, pEndFruehere date, pRuhestand varchar2, pTeilzeit varchar2, pGrundTeilz varchar2, pBegVhltnis date, pBefristung date, pVollzeit varchar2, pProbezeit varchar2, pEndProbez date, pOertlicheVers varchar2, pAtsId number, pId number default null) return number;
END WVG_PACK_BETRIEBSZ;

/
