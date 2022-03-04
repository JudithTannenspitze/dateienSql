--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table WVG_ADRESSEN
--------------------------------------------------------

  CREATE TABLE "WOHNUNG"."WVG_ADRESSEN" 
   (	"ID" NUMBER, 
	"ADR_TYPE" VARCHAR2(255 BYTE), 
	"ADR_ANZEIGENAME" VARCHAR2(255 BYTE), 
	"ADR_ANREDE" VARCHAR2(100 BYTE), 
	"ADR_VORNAME" VARCHAR2(255 BYTE), 
	"ADR_NAME1" VARCHAR2(255 BYTE), 
	"ADR_NAME2" VARCHAR2(255 BYTE), 
	"ADR_STRASSE" VARCHAR2(100 BYTE), 
	"ADR_HS" VARCHAR2(50 BYTE), 
	"ADR_PLZ" NUMBER, 
	"ADR_ORT" VARCHAR2(20 BYTE), 
	"ADR_LKR" VARCHAR2(20 BYTE), 
	"CREATED_ON" TIMESTAMP (6), 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"MODIFIED_ON" TIMESTAMP (6), 
	"MODIFIED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into WOHNUNG.WVG_ADRESSEN
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Trigger TRIG_WVG_ADRESSEN
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "WOHNUNG"."TRIG_WVG_ADRESSEN" 
BEFORE INSERT OR UPDATE ON WVG_adressen
FOR EACH ROW 
BEGIN 
IF :new.id is NULL
THEN 
 SELECT to_number(SEQ_WVG_ADRESSEN.nextval) INTO :new.id FROM dual;
END IF;
    IF inserting THEN
        :new.created_on := localtimestamp;
        :new.created_by := nvl(wwv_flow.g_user,user);
    END IF;
IF updating THEN
:new.modified_on := localtimestamp;
:new.modified_by := nvl(wwv_flow.g_user,user);
    END IF;
END;
/
ALTER TRIGGER "WOHNUNG"."TRIG_WVG_ADRESSEN" ENABLE;
--------------------------------------------------------
--  Constraints for Table WVG_ADRESSEN
--------------------------------------------------------

  ALTER TABLE "WOHNUNG"."WVG_ADRESSEN" MODIFY ("ADR_LKR" NOT NULL ENABLE);
