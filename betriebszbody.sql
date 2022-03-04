--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_BETRIEBSZ
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_BETRIEBSZ" 
AS
    function save_betriebsz (pAktOrt varchar2, pBishOrt varchar2, pInAusb varchar2, pEndAusb date, 
                            pFruehere varchar2, pStaFruehere date, pEndFruehere date, pRuhestand varchar2,
                            pTeilzeit varchar2, pGrundTeilz varchar2, pBegVhltnis date, pBefristung date,
                            pVollzeit varchar2, pProbezeit varchar2,pEndProbez date, pOertlicheVers varchar2, 
                            pAtsId number, pId number default null) return number
    AS
        vid number;
    BEGIN
        if pId is null then 
            insert into wvg_betriebszugehoerigkeit
                (bzg_akt_wohnort, bzg_bish_wohnort, bzg_in_ausb, bzg_end_ausb, bzg_fruehere, bzg_sta_fruehere, 
                bzg_end_fruehere, bzg_ruhestand, bzg_teilzeit, bzg_grund_teilzeit, bzg_beg_vhltnis, 
                bzg_befristung, bzg_vollzeit, bzg_probezeit, bzg_ende_probezeit, bzg_oertliche_vers, bzg_ats_id) 
            values 
                (pAktOrt, pBishOrt, pInAusb, pEndAusb, pFruehere, pStaFruehere, pEndFruehere, pRuhestand,
                pTeilzeit, pGrundTeilz, pBegVhltnis, pBefristung, pVollzeit, pProbezeit, pEndProbez, 
                pOertlicheVers, pAtsId)
            returning id into vid;
        else 
            update wvg_betriebszugehoerigkeit
            set 
                bzg_akt_wohnort     = pAktOrt, 
                bzg_bish_wohnort    = pBishOrt,
                bzg_in_ausb         = pInAusb, 
                bzg_end_ausb        = pEndAusb,
                bzg_fruehere        = pFruehere, 
                bzg_sta_fruehere    = pStaFruehere, 
                bzg_end_fruehere    = pEndFruehere, 
                bzg_ruhestand       = pRuhestand,
                bzg_teilzeit        = pTeilzeit, 
                bzg_grund_teilzeit  = pGrundTeilz, 
                bzg_beg_vhltnis     = pBegVhltnis, 
                bzg_befristung      = pBefristung,
                bzg_vollzeit        = pVollzeit, 
                bzg_probezeit       = pProbezeit, 
                bzg_ende_probezeit  = pEndProbez,
                bzg_oertliche_vers  = pOertlicheVers,
                bzg_ats_id          = pAtsId
            where id = pId;
            vid := pId;
        end if;
        return vid;
    end;
end;

/
