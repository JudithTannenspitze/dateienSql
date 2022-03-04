--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Package Body WVG_PACK_BENUTZER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE PACKAGE BODY "WOHNUNG"."WVG_PACK_BENUTZER" 
AS
function save_benutzer(pUsernam varchar2, pPassw varchar2, pRight varchar2, pGesperrt varchar2, pFaillogon varchar2, pEmail varchar2, pId number default null) return number
AS
vid number;
BEGIN
if pId is null then 
            insert into wvg_benutzer
                (usr_username, usr_password, usr_right, usr_gesperrt, usr_faillogon, usr_email) 
            values 
                (pUsernam, pPassw, pRight, pGesperrt, pFaillogon, pEmail)
            returning id into vid;
        else
            update wvg_benutzer 
            set 
                usr_username   = pUsernam,
                usr_password   = pPassw,
                usr_right      = pRight,
                usr_gesperrt   = pGesperrt, 
                usr_faillogon  = pFaillogon, 
                usr_email      = pEmail
            where id = pId;
            vid := pId;
        end if;
        return vid;
    END;
END;

/
