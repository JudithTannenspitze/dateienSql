--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table WVG_COMBO
--------------------------------------------------------

  CREATE TABLE "WOHNUNG"."WVG_COMBO" 
   (	"ID" NUMBER, 
	"CBO_WERT" VARCHAR2(20 BYTE), 
	"CBO_ART" VARCHAR2(20 BYTE), 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"CREATED_ON" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"MODIFIED_ON" TIMESTAMP (6) WITH LOCAL TIME ZONE, 
	"CBO_AKTIV" VARCHAR2(5 BYTE), 
	"MODIFIED_BY" VARCHAR2(255 BYTE), 
	"CBO_RUECK" VARCHAR2(100 BYTE), 
	"CBO_ID" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "WOHNUNG"."WVG_COMBO"."CREATED_BY" IS 'Benutzernamen Ersteller Datensatz';
   COMMENT ON COLUMN "WOHNUNG"."WVG_COMBO"."CREATED_ON" IS 'Timestamp Erstellung Datensatz';
   COMMENT ON COLUMN "WOHNUNG"."WVG_COMBO"."MODIFIED_ON" IS 'Timestamp Änderung Datensatz';
   COMMENT ON COLUMN "WOHNUNG"."WVG_COMBO"."CBO_AKTIV" IS 'ist Combo aktiv?';
   COMMENT ON COLUMN "WOHNUNG"."WVG_COMBO"."MODIFIED_BY" IS 'Benutzernamen Änderer Datensatz';
   COMMENT ON COLUMN "WOHNUNG"."WVG_COMBO"."CBO_ID" IS 'künstliche Schlüssel Datensatz';
REM INSERTING into WOHNUNG.WVG_COMBO
SET DEFINE OFF;
Insert into WOHNUNG.WVG_COMBO (ID,CBO_WERT,CBO_ART,CREATED_BY,CREATED_ON,MODIFIED_ON,CBO_AKTIV,MODIFIED_BY,CBO_RUECK,CBO_ID) values ('7','User','Benutzergruppen','WOHNUNG',to_timestamp('28.02.22 12:20:11,670538000','DD.MM.RR HH24:MI:SSXFF'),to_timestamp('01.03.22 15:12:02,274132000','DD.MM.RR HH24:MI:SSXFF'),'ja','JUDITH.BORNHAUPT','us','7');
Insert into WOHNUNG.WVG_COMBO (ID,CBO_WERT,CBO_ART,CREATED_BY,CREATED_ON,MODIFIED_ON,CBO_AKTIV,MODIFIED_BY,CBO_RUECK,CBO_ID) values ('1','teilweise','dauerhaftteilweise','WOHNUNG',to_timestamp('28.02.22 12:15:58,102495000','DD.MM.RR HH24:MI:SSXFF'),null,'ja',null,'tw','1');
Insert into WOHNUNG.WVG_COMBO (ID,CBO_WERT,CBO_ART,CREATED_BY,CREATED_ON,MODIFIED_ON,CBO_AKTIV,MODIFIED_BY,CBO_RUECK,CBO_ID) values ('2','dauerhaft','dauerhaftteilweise','WOHNUNG',to_timestamp('28.02.22 12:16:17,765287000','DD.MM.RR HH24:MI:SSXFF'),null,'ja',null,'dh','2');
Insert into WOHNUNG.WVG_COMBO (ID,CBO_WERT,CBO_ART,CREATED_BY,CREATED_ON,MODIFIED_ON,CBO_AKTIV,MODIFIED_BY,CBO_RUECK,CBO_ID) values ('3','ja','janein','WOHNUNG',to_timestamp('28.02.22 12:16:55,328439000','DD.MM.RR HH24:MI:SSXFF'),null,'ja',null,'j','3');
Insert into WOHNUNG.WVG_COMBO (ID,CBO_WERT,CBO_ART,CREATED_BY,CREATED_ON,MODIFIED_ON,CBO_AKTIV,MODIFIED_BY,CBO_RUECK,CBO_ID) values ('4','nein','janein','WOHNUNG',to_timestamp('28.02.22 12:17:09,863884000','DD.MM.RR HH24:MI:SSXFF'),null,'nein',null,'n','4');
Insert into WOHNUNG.WVG_COMBO (ID,CBO_WERT,CBO_ART,CREATED_BY,CREATED_ON,MODIFIED_ON,CBO_AKTIV,MODIFIED_BY,CBO_RUECK,CBO_ID) values ('5','Fachadmin','Benutzergruppen','WOHNUNG',to_timestamp('28.02.22 12:17:41,853923000','DD.MM.RR HH24:MI:SSXFF'),null,'ja',null,'fa','5');
Insert into WOHNUNG.WVG_COMBO (ID,CBO_WERT,CBO_ART,CREATED_BY,CREATED_ON,MODIFIED_ON,CBO_AKTIV,MODIFIED_BY,CBO_RUECK,CBO_ID) values ('6','Admin','Benutzergruppen','WOHNUNG',to_timestamp('28.02.22 12:17:55,590511000','DD.MM.RR HH24:MI:SSXFF'),null,'ja',null,'ad','6');
--------------------------------------------------------
--  DDL for Trigger TRIG_WVG_COMBO
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "WOHNUNG"."TRIG_WVG_COMBO" 
BEFORE INSERT OR UPDATE ON WVG_COMBO 
FOR EACH ROW 
BEGIN 
IF :new.id is NULL
THEN 
 SELECT to_number(SEQ_WVG_COMBO.nextval) INTO :new.id FROM dual;
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
ALTER TRIGGER "WOHNUNG"."TRIG_WVG_COMBO" ENABLE;
--------------------------------------------------------
--  Constraints for Table WVG_COMBO
--------------------------------------------------------

  ALTER TABLE "WOHNUNG"."WVG_COMBO" MODIFY ("ID" NOT NULL ENABLE);
