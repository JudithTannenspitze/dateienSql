--------------------------------------------------------
--  Datei erstellt -Freitag-M?rz-04-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table WVG_ANTRAGSSTELLER
--------------------------------------------------------

  CREATE TABLE "WOHNUNG"."WVG_ANTRAGSSTELLER" 
   (	"ID" NUMBER, 
	"ATS_EMAIL_DIENSTL" VARCHAR2(200 BYTE), 
	"ATS_EMAIL_PRIVAT" VARCHAR2(200 BYTE), 
	"ATS_VORNAME" VARCHAR2(255 BYTE), 
	"ATS_NAME" VARCHAR2(255 BYTE), 
	"ATS_TELEF_PRIVAT" VARCHAR2(50 BYTE), 
	"ATS_TELEF_DIENSTL" VARCHAR2(50 BYTE), 
	"ATS_BERUFSBEZ" VARCHAR2(200 BYTE), 
	"ATS_GEBURTSDATUM" DATE, 
	"ATS_WOHNORT" VARCHAR2(200 BYTE), 
	"ATS_PLZ" VARCHAR2(50 BYTE), 
	"CREATED_ON" TIMESTAMP (6), 
	"CREATED_BY" VARCHAR2(255 BYTE), 
	"MODIFIED_ON" TIMESTAMP (6), 
	"MODIFIED_BY" VARCHAR2(255 BYTE), 
	"ATS_STRASSE" VARCHAR2(200 BYTE), 
	"ATS_HAUSNUMMER" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ID" IS 'prim?re Schl?ssel';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_EMAIL_DIENSTL" IS 'dienstliche emails der Antragssteller';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_EMAIL_PRIVAT" IS 'private emails der antragssteller';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_VORNAME" IS 'Vornamen der Antragssteller';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_NAME" IS 'Nachnamen der Antragssteller';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_TELEF_DIENSTL" IS 'dienstliche Telefonnummern der Antragssteller';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_BERUFSBEZ" IS 'Bezeichnungen Berufe der Antragssteller';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_GEBURTSDATUM" IS 'angegebene Geburtsdatum aller  Antragssteller';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_WOHNORT" IS 'wohnorte der Antragssteller';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_PLZ" IS 'Postleitzahlen der Orte von den Antragsstellern';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."CREATED_ON" IS 'Timestamp Erstellung  Datensatz';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."CREATED_BY" IS 'Ersteller des jeweiligen Datensatzes';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."MODIFIED_ON" IS 'Timestamp ?nderung  Datensatz';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."MODIFIED_BY" IS 'Benutzernamen  Person, die den Datensatz ge?ndert hat';
   COMMENT ON COLUMN "WOHNUNG"."WVG_ANTRAGSSTELLER"."ATS_HAUSNUMMER" IS 'Hausnummern Wohnanschriften  der Antragssteller';
   COMMENT ON TABLE "WOHNUNG"."WVG_ANTRAGSSTELLER"  IS 'allgemeine Daten Antragssteller';
REM INSERTING into WOHNUNG.WVG_ANTRAGSSTELLER
SET DEFINE OFF;
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('2',null,null,null,null,null,null,null,null,null,null,to_timestamp('28.02.22 12:41:29,264786000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',null,null,null,null);
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('3',null,null,null,null,null,null,null,to_date('28.02.22','DD.MM.RR'),null,null,to_timestamp('28.02.22 12:59:56,387120000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',null,null,null,null);
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('4','Judith.Bornhaupt@hotmail.de','Judith.Bornhaupt@hotmail.de','Iris Maria','Magdalena','08434/1573','08434/1573','Psychologin',to_date('01.01.60','DD.MM.RR'),'Rennertshofen','86643',to_timestamp('01.03.22 06:56:14,310512000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',to_timestamp('02.03.22 10:02:35,770104000','DD.MM.RR HH24:MI:SSXFF'),'ROD42201','S?dlicher Birkenweg','6');
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('5',null,null,null,null,null,null,null,null,null,null,to_timestamp('01.03.22 10:27:28,465465000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',null,null,null,null);
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('6',null,null,'Iris','Langner',null,null,null,to_date('21.03.22','DD.MM.RR'),'Rennertshofen','86643',to_timestamp('01.03.22 12:30:12,024732000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',to_timestamp('01.03.22 15:26:55,295855000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT','S?dlicher Birkenweg','6');
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('7',null,null,null,null,null,null,null,null,null,null,to_timestamp('01.03.22 12:39:31,851179000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',null,null,null,null);
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('8',null,null,null,null,null,null,null,null,null,null,to_timestamp('01.03.22 12:48:24,306379000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',null,null,null,null);
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('9','Judith.Bornhaupt@hotmail.de','Judith.Bornhaupt@hotmail.de','Iris','von Bornhaupt','08434/1573','08434/1573','Psychologin',to_date('16.03.22','DD.MM.RR'),'M?nchen','81249',to_timestamp('01.03.22 15:13:22,259122000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',null,null,'Colmdorfstr','32');
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('10','Judith.Bornhaupt@hotmail.de','Judith.Bornhaupt@hotmail.de','Iris','Maria','jfjfjf','jfjfjf','Psychologin',to_date('02.03.22','DD.MM.RR'),'Ingolstadt','86643',to_timestamp('02.03.22 08:01:14,347159000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',to_timestamp('02.03.22 08:39:04,266853000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT','Weinbergstra?e','15');
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('11',null,null,'Iris','Armrei',null,null,null,null,null,null,to_timestamp('02.03.22 14:20:16,928170000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',null,null,'S?dlicher birkenweg','6');
Insert into WOHNUNG.WVG_ANTRAGSSTELLER (ID,ATS_EMAIL_DIENSTL,ATS_EMAIL_PRIVAT,ATS_VORNAME,ATS_NAME,ATS_TELEF_PRIVAT,ATS_TELEF_DIENSTL,ATS_BERUFSBEZ,ATS_GEBURTSDATUM,ATS_WOHNORT,ATS_PLZ,CREATED_ON,CREATED_BY,MODIFIED_ON,MODIFIED_BY,ATS_STRASSE,ATS_HAUSNUMMER) values ('1','Judith.Bornhaupt@hotmail.de','Judith.Bornhaupt@hotmail.de','Judith','von Bornhaupt','084341573','084341573','Psychologin',to_date('16.02.22','DD.MM.RR'),'Rennertshofen','86643',to_timestamp('28.02.22 12:28:40,114799000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT',to_timestamp('28.02.22 12:41:11,924599000','DD.MM.RR HH24:MI:SSXFF'),'JUDITH.BORNHAUPT','S?dlicher Birkenweg','6');
--------------------------------------------------------
--  DDL for Index PRIMARYKEYANTRAGSSTELLER
--------------------------------------------------------

  CREATE UNIQUE INDEX "WOHNUNG"."PRIMARYKEYANTRAGSSTELLER" ON "WOHNUNG"."WVG_ANTRAGSSTELLER" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Trigger TRIG_WVG_ANTRAGSSTELLER
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "WOHNUNG"."TRIG_WVG_ANTRAGSSTELLER" 
BEFORE INSERT OR UPDATE ON WVG_ANTRAGSSTELLER 
FOR EACH ROW 
BEGIN 
IF :new.id is NULL
THEN 
 SELECT to_number(SEQ_WVG_ANTRAGSSTELLER.nextval) INTO :new.id FROM dual;
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
ALTER TRIGGER "WOHNUNG"."TRIG_WVG_ANTRAGSSTELLER" ENABLE;
--------------------------------------------------------
--  Constraints for Table WVG_ANTRAGSSTELLER
--------------------------------------------------------

  ALTER TABLE "WOHNUNG"."WVG_ANTRAGSSTELLER" ADD CONSTRAINT "PRIMARYKEYANTRAGSSTELLER" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "WOHNUNG"."WVG_ANTRAGSSTELLER" MODIFY ("ID" NOT NULL ENABLE);
