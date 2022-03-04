--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package WVG_PACK_FILES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE "WOHNUNG"."WVG_PACK_FILES" AS 

  /* TODO enter package declarations (types, exceptions, methods etc) here */ 
function save_file(pFremdArt varchar2, pFremdId number, pFilename varchar2, pFileMimetype varchar2,
    pFileCharset varchar2, pFileBlob varchar2, pComments varchar2, pAtsId number,  pKennz number,
    pId number default null) return number;
END WVG_PACK_FILES;

/
