--------------------------------------------------------
--  Fichier cr�� - mardi-novembre-02-2021   
--------------------------------------------------------
DROP TABLE "SYSTEM"."GS_ALIMENTER";
DROP TABLE "SYSTEM"."GS_ANIMAUX";
DROP TABLE "SYSTEM"."GS_APPROVISIONNEMENT";
DROP TABLE "SYSTEM"."GS_CLIENTS";
DROP TABLE "SYSTEM"."GS_GERER";
DROP TABLE "SYSTEM"."GS_PERSONNELS";
DROP TABLE "SYSTEM"."GS_TICKETS";
--------------------------------------------------------
--  DDL for Table GS_ALIMENTER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."GS_ALIMENTER" 
   (	"CIN_PERSONNEL" NUMBER, 
	"CIN_ANIMAUX" NUMBER, 
	"DATE_NUTRITION" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GS_ANIMAUX
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."GS_ANIMAUX" 
   (	"ID_A" NUMBER, 
	"NOM" VARCHAR2(20 BYTE), 
	"PRENOM" VARCHAR2(20 BYTE), 
	"SEXE" CHAR(1 BYTE), 
	"CLASSE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GS_APPROVISIONNEMENT
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."GS_APPROVISIONNEMENT" 
   (	"ID_APP" NUMBER, 
	"CLASSE" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GS_CLIENTS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."GS_CLIENTS" 
   (	"CIN" NUMBER, 
	"NOM" VARCHAR2(20 BYTE), 
	"PRENOM" VARCHAR2(20 BYTE), 
	"DATE_NAISSANCE" DATE, 
	"TELEPHONE" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GS_GERER
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."GS_GERER" 
   (	"CIN_PERSONNELS" NUMBER, 
	"ID_APPR" NUMBER, 
	"DATE_HEURE" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GS_PERSONNELS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."GS_PERSONNELS" 
   (	"CIN" NUMBER, 
	"NOM" VARCHAR2(20 BYTE), 
	"PRENOM" VARCHAR2(20 BYTE), 
	"DATE_NAISSANCE" DATE, 
	"AGE" NUMBER, 
	"TEL" NUMBER, 
	"VILLE" VARCHAR2(20 BYTE), 
	"ADRESSE" VARCHAR2(40 BYTE), 
	"CIN_ADMIN" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table GS_TICKETS
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."GS_TICKETS" 
   (	"ID_TICKET" NUMBER, 
	"DATE_VENTE" DATE, 
	"CIN_CLIENT" NUMBER, 
	"CIN_PERSONNELS" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM.GS_ALIMENTER
SET DEFINE OFF;
REM INSERTING into SYSTEM.GS_ANIMAUX
SET DEFINE OFF;
REM INSERTING into SYSTEM.GS_APPROVISIONNEMENT
SET DEFINE OFF;
REM INSERTING into SYSTEM.GS_CLIENTS
SET DEFINE OFF;
REM INSERTING into SYSTEM.GS_GERER
SET DEFINE OFF;
REM INSERTING into SYSTEM.GS_PERSONNELS
SET DEFINE OFF;
Insert into SYSTEM.GS_PERSONNELS (CIN,NOM,PRENOM,DATE_NAISSANCE,AGE,TEL,VILLE,ADRESSE,CIN_ADMIN) values ('1','KOUEBOU','Gilles',to_date('08/06/03','DD/MM/RR'),'18','50953189','Tunis','Mansoura',null);
REM INSERTING into SYSTEM.GS_TICKETS
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index GS_ALIMENTER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."GS_ALIMENTER_PK" ON "SYSTEM"."GS_ALIMENTER" ("CIN_PERSONNEL", "CIN_ANIMAUX") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GS_ANIMAUX_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."GS_ANIMAUX_PK" ON "SYSTEM"."GS_ANIMAUX" ("ID_A") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GS_APPROVISIONNEMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."GS_APPROVISIONNEMENT_PK" ON "SYSTEM"."GS_APPROVISIONNEMENT" ("ID_APP") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GS_CLIENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."GS_CLIENTS_PK" ON "SYSTEM"."GS_CLIENTS" ("CIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GS_GERER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."GS_GERER_PK" ON "SYSTEM"."GS_GERER" ("ID_APPR", "CIN_PERSONNELS") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PERSONNELS
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."PK_PERSONNELS" ON "SYSTEM"."GS_PERSONNELS" ("CIN") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index GS_TICKETS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."GS_TICKETS_PK" ON "SYSTEM"."GS_TICKETS" ("ID_TICKET") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table GS_ALIMENTER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_ALIMENTER" ADD CONSTRAINT "GS_ALIMENTER_PK" PRIMARY KEY ("CIN_PERSONNEL", "CIN_ANIMAUX")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."GS_ALIMENTER" MODIFY ("DATE_NUTRITION" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_ALIMENTER" MODIFY ("CIN_ANIMAUX" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_ALIMENTER" MODIFY ("CIN_PERSONNEL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GS_ANIMAUX
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_ANIMAUX" ADD CONSTRAINT "GS_ANIMAUX_PK" PRIMARY KEY ("ID_A")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."GS_ANIMAUX" MODIFY ("CLASSE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_ANIMAUX" MODIFY ("PRENOM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_ANIMAUX" MODIFY ("NOM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_ANIMAUX" MODIFY ("ID_A" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GS_APPROVISIONNEMENT
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_APPROVISIONNEMENT" ADD CONSTRAINT "GS_APPROVISIONNEMENT_PK" PRIMARY KEY ("ID_APP")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."GS_APPROVISIONNEMENT" MODIFY ("CLASSE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_APPROVISIONNEMENT" MODIFY ("ID_APP" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GS_CLIENTS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_CLIENTS" ADD CONSTRAINT "GS_CLIENTS_PK" PRIMARY KEY ("CIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."GS_CLIENTS" MODIFY ("PRENOM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_CLIENTS" MODIFY ("NOM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_CLIENTS" MODIFY ("CIN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GS_GERER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_GERER" ADD CONSTRAINT "GS_GERER_PK" PRIMARY KEY ("ID_APPR", "CIN_PERSONNELS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."GS_GERER" MODIFY ("DATE_HEURE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_GERER" MODIFY ("ID_APPR" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_GERER" MODIFY ("CIN_PERSONNELS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GS_PERSONNELS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_PERSONNELS" ADD CONSTRAINT "GS_PERSONNELS_PK" PRIMARY KEY ("CIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."GS_PERSONNELS" MODIFY ("ADRESSE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_PERSONNELS" MODIFY ("VILLE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_PERSONNELS" MODIFY ("TEL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_PERSONNELS" MODIFY ("AGE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_PERSONNELS" MODIFY ("DATE_NAISSANCE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_PERSONNELS" MODIFY ("PRENOM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_PERSONNELS" MODIFY ("NOM" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_PERSONNELS" MODIFY ("CIN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GS_TICKETS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_TICKETS" MODIFY ("CIN_PERSONNELS" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_TICKETS" MODIFY ("CIN_CLIENT" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_TICKETS" ADD CONSTRAINT "GS_TICKETS_PK" PRIMARY KEY ("ID_TICKET")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "SYSTEM"."GS_TICKETS" MODIFY ("DATE_VENTE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."GS_TICKETS" MODIFY ("ID_TICKET" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table GS_ALIMENTER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_ALIMENTER" ADD CONSTRAINT "GS_ALIMENTER_FK" FOREIGN KEY ("CIN_PERSONNEL")
	  REFERENCES "SYSTEM"."GS_PERSONNELS" ("CIN") ENABLE;
  ALTER TABLE "SYSTEM"."GS_ALIMENTER" ADD CONSTRAINT "GS_ALIMENTER_FK_02" FOREIGN KEY ("CIN_ANIMAUX")
	  REFERENCES "SYSTEM"."GS_ANIMAUX" ("ID_A") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GS_GERER
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_GERER" ADD CONSTRAINT "GS_GERER_FK_01" FOREIGN KEY ("ID_APPR")
	  REFERENCES "SYSTEM"."GS_APPROVISIONNEMENT" ("ID_APP") ENABLE;
  ALTER TABLE "SYSTEM"."GS_GERER" ADD CONSTRAINT "GS_GERER_FK_02" FOREIGN KEY ("CIN_PERSONNELS")
	  REFERENCES "SYSTEM"."GS_PERSONNELS" ("CIN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GS_PERSONNELS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_PERSONNELS" ADD CONSTRAINT "GS_ADMIN_FK" FOREIGN KEY ("CIN_ADMIN")
	  REFERENCES "SYSTEM"."GS_PERSONNELS" ("CIN") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GS_TICKETS
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."GS_TICKETS" ADD CONSTRAINT "GS_TICKETS_SK_01" FOREIGN KEY ("CIN_PERSONNELS")
	  REFERENCES "SYSTEM"."GS_PERSONNELS" ("CIN") ENABLE;
  ALTER TABLE "SYSTEM"."GS_TICKETS" ADD CONSTRAINT "GS_TICKETS_SK_02" FOREIGN KEY ("CIN_CLIENT")
	  REFERENCES "SYSTEM"."GS_CLIENTS" ("CIN") ENABLE;