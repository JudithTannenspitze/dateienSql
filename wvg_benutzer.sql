--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table WVG_BENUTZER
--------------------------------------------------------

  CREATE TABLE "WOHNUNG"."WVG_BENUTZER" 
   (	"ID" NUMBER, 
	"USR_USERNAME" VARCHAR2(255 BYTE), 
	"USR_PASSWORD" VARCHAR2(255 BYTE), 
	"USR_RIGHT" VARCHAR2(200 BYTE), 
	"USR_GESPERRT" VARCHAR2(200 BYTE), 
	"USR_FAILLOGON" VARCHAR2(255 BYTE), 
	"USR_EMAIL" VARCHAR2(255 BYTE), 
	"CREATED_ON" TIMESTAMP (6), 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"MODIFIED_ON" TIMESTAMP (6), 
	"MODIFIED_BY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."ID" IS 'primäre Schlüssel';
   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."USR_USERNAME" IS 'Benutzername ';
   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."USR_PASSWORD" IS 'Passwort von Benutzer';
   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."USR_RIGHT" IS 'Rechtegruppe Benutzer';
   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."USR_GESPERRT" IS 'ist Benutzer gesperrt?';
   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."USR_EMAIL" IS 'email Benutzer';
   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."CREATED_ON" IS 'Timestamp Erstellung Datensatz';
   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."CREATED_BY" IS 'Benutzernamen Ersteller Datensatz';
   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."MODIFIED_ON" IS 'Timestamp Änderung Datensatz';
   COMMENT ON COLUMN "WOHNUNG"."WVG_BENUTZER"."MODIFIED_BY" IS 'Benutzernamen Änderer Datensatz';
   COMMENT ON TABLE "WOHNUNG"."WVG_BENUTZER"  IS 'Daten Administration Benutzer';
REM INSERTING into WOHNUNG.WVG_BENUTZER
SET DEFINE OFF;
Insert into WOHNUNG.WVG_BENUTZER (ID,USR_USERNAME,USR_PASSWORD,USR_RIGHT,USR_GESPERRT,USR_FAILLOGON,USR_EMAIL,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY) values ('1','rod42201',null,'Fachadmin','nein',null,'manfred.rodat@itbo.com',to_timestamp('01.03.22 11:03:28,257260000','DD.MM.RR HH24:MI:SSXFF'),'WOHNUNG',to_timestamp('01.03.22 15:11:34,006132000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT');
Insert into WOHNUNG.WVG_BENUTZER (ID,USR_USERNAME,USR_PASSWORD,USR_RIGHT,USR_GESPERRT,USR_FAILLOGON,USR_EMAIL,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY) values ('2','Judith.Bornhaupt',null,'Fachadmin','nein','null','Judith.Bornhaupt@itbo.com',to_timestamp('01.03.22 11:04:14,371559000','DD.MM.RR HH24:MI:SSXFF'),'WOHNUNG',null,null);
--------------------------------------------------------
--  DDL for Trigger TRIG_WVG_BENUTZER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "WOHNUNG"."TRIG_WVG_BENUTZER" 
BEFORE INSERT OR UPDATE ON WVG_benutzer 
FOR EACH ROW 
BEGIN 
IF :new.id is NULL
THEN 
 SELECT to_number(SEQ_WVG_benutzer.nextval) INTO :new.id FROM dual;
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
ALTER TRIGGER "WOHNUNG"."TRIG_WVG_BENUTZER" ENABLE;
