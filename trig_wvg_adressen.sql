--------------------------------------------------------
--  Datei erstellt -Freitag-März-04-2022   
--------------------------------------------------------
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
