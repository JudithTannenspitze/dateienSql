--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_FILES
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_FILES" 
AS
    function save_file(pFremdArt varchar2, pFremdId number, pFilename varchar2, pFileMimetype varchar2,
    pFileCharset varchar2, pFileBlob varchar2, pComments varchar2, pAtsId number,  pKennz number,
    pId number default null) return number
    AS
        vid number;
        vzaehler number;
        zeichenkette varchar2(255);
    BEGIN
            if pId is null then
        --select count(*) into vzaehler from wvg_files where fil_ats_id = pAtsId and fil_kennz = pKennz;
        --zeichenkette := utl_raw.cast_to_varchar2(dbms_lob.substr(pFileBlob));
        --if vzaehler = 0  then
            insert into wvg_files (fil_fremd_art, fil_fremd_id, fil_filename, fil_file_mimetype, 
            fil_file_charset, fil_file_blob, fil_comments, fil_ats_id,fil_kennz) 
            values (pFremdArt, pFremdId, zeichenkette, pFileMimetype,pFileCharset, pFileBlob, pComments,pAtsId,
            pKennz)
            returning id into vid;
        else 
            update wvg_files 
            set
            fil_fremd_art       = pFremdArt, 
            fil_fremd_id        = pFremdId, 
            fil_filename        = pFilename, 
            fil_file_mimetype   = pFileMimetype,
            fil_file_charset    = pFileCharset,
            fil_file_blob       = pFileBlob,
            fil_comments        = pComments
            where fil_ats_id = pAtsId and fil_kennz = pKennz;
            vid := pId;
        end if;
        return vid;
    end;
 end;

/
