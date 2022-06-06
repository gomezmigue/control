--
-- Generated from mysql2pgsql.perl
-- http://gborg.postgresql.org/project/mysql2psql/
-- (c) 2001 - 2007 Jose M. Duarte, Joseph Speigle
--

-- warnings are printed for drop tables if they do not exist
-- please see http://archives.postgresql.org/pgsql-novice/2004-10/msg00158.php

-- ##############################################################
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: BachilleratoEnLinea
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3


--
-- Table structure for table CicloAdministracion
--

CREATE TABLE  "cicloadministracion" (
   "id" serial8 ,
   "clave"   varchar(45) DEFAULT NULL, 
   "inicia"   date DEFAULT NULL, 
   "termina"   date DEFAULT NULL, 
   "activo"   int DEFAULT NULL, 
   "fechalimitedeposito"   date DEFAULT NULL, 
   "fechaconformarexpediente"   date DEFAULT NULL, 
   "fechalimitecolegiatura2"   date DEFAULT NULL , 
   "fechalimitecolegiatura3"   date DEFAULT NULL, 
   "ultimofolio"   varchar(9) DEFAULT NULL, 
   "iniciocurso"   date DEFAULT NULL, 
   "fechataller"   date DEFAULT NULL, 
   primary key ("id")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table DatosAcademicosAspirante
--

CREATE TABLE  "datosacademicosaspirante" (
   "id" serial8 ,
   "curp"   varchar(18) DEFAULT NULL, 
   "folio"   varchar(9) DEFAULT NULL, 
   "referencia"   varchar(20) DEFAULT NULL, 
   "concluido"   varchar(1) DEFAULT '', 
   "manual"   varchar(45) DEFAULT NULL, 
   "ciclo"   varchar(45) NOT NULL DEFAULT '', 
   "fecharegistro"   timestamp without time zone DEFAULT NULL, 
   "grupo"   varchar(15) DEFAULT NULL, 
   "ordenmaterias"   varchar(255) DEFAULT NULL, 
   primary key ("id", "ciclo")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table DatosAdicionales
--

CREATE TABLE  "datosadicionales" (
   "curp"   varchar(18) NOT NULL DEFAULT '', 
   "computadorainternet"   char(2) DEFAULT NULL, 
   "medio"   varchar(45) DEFAULT NULL, 
   "laborando"   char(2) DEFAULT NULL, 
   "numerohoras"   varchar(45) DEFAULT NULL, 
   "capacidadesespeciales"   varchar(100) DEFAULT NULL, 
   "ciclo"   varchar(45) NOT NULL, 
   primary key ("curp", "ciclo")
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table DatosEscuelaProcedencia
--

CREATE TABLE  "datosescuelaprocedencia" (
   "curp"   varchar(18) NOT NULL, 
   "tipoalumno"   int DEFAULT NULL, 
   "fechaconclusionsecundaria"   date DEFAULT NULL, 
   "promedio"   int DEFAULT NULL, 
   "pais"   int DEFAULT NULL, 
   "estado"   int DEFAULT NULL, 
   "otroestado"   varchar(255) DEFAULT NULL, 
   "municipio"   int DEFAULT NULL, 
   "otromunicipio"   varchar(255) DEFAULT NULL, 
   "nombreescuela"   varchar(100) DEFAULT NULL, 
   "tipoprocedencia"   int DEFAULT NULL, 
   "foliocertificado"   varchar(20) DEFAULT NULL, 
   "ciclo"   varchar(45) NOT NULL, 
   primary key ("curp", "ciclo")
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table DatosSeguridad
--

CREATE TABLE  "datosseguridad" (
   "id" serial8 ,
   "curp"   varchar(18) DEFAULT NULL, 
   "respuesta1"   varchar(255) DEFAULT NULL, 
   "respuesta2"   varchar(255) DEFAULT NULL, 
   "respuesta3"   varchar(255) DEFAULT NULL, 
   "respuesta4"   varchar(255) DEFAULT NULL, 
   primary key ("id")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table DatosTutor
--

CREATE TABLE  "datostutor" (
   "curp"   varchar(18) NOT NULL, 
   "paterno"   varchar(100) DEFAULT NULL, 
   "materno"   varchar(100) DEFAULT NULL, 
   "nombre"   varchar(100) DEFAULT NULL, 
   "pais"   int DEFAULT NULL, 
   "estado"   int DEFAULT NULL, 
   "otroestado"   varchar(255) DEFAULT NULL, 
   "municipio"   int DEFAULT NULL, 
   "otromunicipio"   varchar(255) DEFAULT NULL, 
   "localidad"   varchar(255) DEFAULT NULL, 
   "calle"   varchar(100) DEFAULT NULL, 
   "numext"   int DEFAULT NULL, 
   "numint"   int DEFAULT NULL, 
   "colonia"   varchar(100) DEFAULT NULL, 
   "cp"   int DEFAULT NULL, 
   "email"   varchar(100) DEFAULT NULL, 
   "lada"   int DEFAULT NULL, 
   "telefono"   varchar(25) DEFAULT NULL, 
   "horario"   varchar(25) DEFAULT NULL, 
   "nivel"   varchar(150) DEFAULT NULL, 
   "ciclo"   varchar(45) NOT NULL, 
   primary key ("curp", "ciclo")
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table alumnos
--

CREATE TABLE  "alumnos" (
   "idalumno" serial8 ,
   "matricula"   varchar(15) DEFAULT NULL, 
   "contrasenia"   varchar(10) DEFAULT NULL, 
   "referencia"   varchar(12) DEFAULT NULL, 
   "paterno"   varchar(100) DEFAULT NULL, 
   "materno"   varchar(100) DEFAULT NULL, 
   "nombre"   varchar(100) DEFAULT NULL, 
   "nombrec"   varchar(150) DEFAULT NULL , 
   "correoins"   varchar(100) DEFAULT NULL, 
   "correoper1"   varchar(150) DEFAULT NULL, 
   "correoper2"   varchar(150) DEFAULT NULL, 
   "curp"   varchar(100) DEFAULT NULL, 
   "fechanac"   varchar(50) DEFAULT NULL, 
   "pais"   varchar(100) DEFAULT NULL, 
   "estado"   varchar(100) DEFAULT NULL, 
   "municipio"   varchar(100) DEFAULT NULL, 
   "localidad"   varchar(100) DEFAULT NULL, 
   "calle"   varchar(150) DEFAULT NULL, 
   "nint"   int DEFAULT NULL, 
   "next"   int DEFAULT NULL, 
   "colonia"   varchar(150) DEFAULT NULL, 
   "cp"   int DEFAULT NULL , 
   "telcasa"   varchar(15) DEFAULT NULL , 
   "horariocasa"   varchar(100) DEFAULT NULL , 
   "teltrab"   varchar(15) DEFAULT NULL , 
   "horarioteltrab"   varchar(100) DEFAULT NULL , 
   "celular"   varchar(15) DEFAULT NULL , 
   "horariocelular"   varchar(100) DEFAULT NULL , 
   "idarea"   int DEFAULT '0' , 
   "tipoplan"   int DEFAULT '0' , 
   primary key ("idalumno"),
 unique ("idalumno") 
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table calificaciones_moodle
--

CREATE TABLE  "calificaciones_moodle" (
   "idregistro" serial8 ,
   "matricula"   varchar(80) DEFAULT NULL, 
   "apaterno"   varchar(80) DEFAULT NULL, 
   "amaterno"   varchar(80) DEFAULT NULL, 
   "nombre"   varchar(80) DEFAULT NULL, 
   "calletra"   varchar(50) DEFAULT NULL, 
   "calnum"   varchar(50) DEFAULT NULL, 
   "curso"   varchar(180) DEFAULT NULL, 
   "grupo"   varchar(10) DEFAULT NULL, 
   "ciclo"   varchar(100) DEFAULT NULL, 
   "resultado"   varchar(50) DEFAULT NULL, 
   "idusuario"   varchar(20) DEFAULT NULL, 
   "horareg"   date default '1970-01-01', 
   "idcursomodle" bigint CHECK ("idcursomodle" >= 0) NOT NULL ,
   "idcurso"   varchar(5) DEFAULT NULL, 
   "idmdl_icc_tcciclo" bigint CHECK ("idmdl_icc_tcciclo" >= 0) NOT NULL ,
   primary key ("idregistro")
)     ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table constancia_ctrl
--

CREATE TABLE  "constancia_ctrl" (
   "folio"   int NOT NULL, 
   "fecha"   date NOT NULL default '1970-01-01', 
   "solicita"   varchar(9) NOT NULL , 
   "elabora"   varchar(10) NOT NULL , 
   "autoriza"   varchar(10) NOT NULL , 
   "firma"   varchar(50) NOT NULL , 
   "estatus"   int NOT NULL  
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table datosComunicacion
--

CREATE TABLE  "datoscomunicacion" (
   "curp"   varchar(18) NOT NULL, 
   "mediocomunicacion"   varchar(45) DEFAULT NULL, 
   "email_1"   varchar(100) DEFAULT NULL, 
   "email_2"   varchar(100) DEFAULT NULL, 
   "lada_tel"   varchar(3) DEFAULT NULL, 
   "telefono"   varchar(25) DEFAULT NULL, 
   "hora_tel"   varchar(150) DEFAULT NULL, 
   "lada_cel"   varchar(3) DEFAULT NULL, 
   "celular"   varchar(25) DEFAULT NULL, 
   "hora_cel"   varchar(150) DEFAULT NULL, 
   "lada_oficina"   varchar(3) DEFAULT NULL, 
   "tel_oficina"   varchar(25) DEFAULT NULL, 
   "extension"   int DEFAULT NULL, 
   "hora_oficina"   varchar(150) DEFAULT NULL, 
   "ciclo"   varchar(45) NOT NULL, 
   primary key ("curp", "ciclo")
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table datosGeneralesAspirante
--

CREATE TABLE  "datosgeneralesaspirante" (
   "curp"   varchar(18) NOT NULL, 
   "paterno"   varchar(100) DEFAULT NULL, 
   "materno"   varchar(100) DEFAULT NULL, 
   "nombre"   varchar(100) DEFAULT NULL, 
   "genero"   char(1) DEFAULT NULL, 
   "fechanacimiento"   date DEFAULT NULL, 
   "nacionalidad"   varchar(45) DEFAULT NULL, 
   "paisnac"   int DEFAULT NULL, 
   "estadonac"   int DEFAULT NULL, 
   "otroestado"   varchar(255) DEFAULT NULL, 
   "municipionac"   int DEFAULT NULL, 
   "otromunicipio"   varchar(255) DEFAULT NULL, 
   "localidadnac"   text, 
   "edocivil"   varchar(10) DEFAULT NULL, 
   "ciclo"   varchar(45) NOT NULL, 
   primary key ("curp", "ciclo")
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table datosResidenciaAspirante
--

CREATE TABLE  "datosresidenciaaspirante" (
   "curp"   varchar(18) NOT NULL, 
   "pais"   int DEFAULT NULL, 
   "estado"   int DEFAULT NULL, 
   "otroestado"   varchar(255) DEFAULT NULL, 
   "municipio"   int DEFAULT NULL, 
   "otromunicipio"   varchar(255) DEFAULT NULL, 
   "localidad"   text, 
   "calle"   varchar(255) DEFAULT NULL, 
   "numext"   int DEFAULT NULL, 
   "numint"   int DEFAULT NULL, 
   "colonia"   varchar(45) DEFAULT NULL, 
   "cp"   int DEFAULT NULL, 
   "ciclo"   varchar(45) NOT NULL, 
   primary key ("curp", "ciclo")
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table failed_jobs
--

CREATE TABLE  "failed_jobs" (
   "id" serial8 ,
   "uuid"   varchar(191) NOT NULL, 
   "connection"   text NOT NULL, 
   "queue"   text NOT NULL, 
   "payload"   text NOT NULL, 
   "exception"   text NOT NULL, 
   "failed_at"   timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP, 
   primary key ("id"),
 unique ("uuid") 
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table materias
--

CREATE TABLE  "materias" (
   "idregistro" serial8  ,
   "matricula"   varchar(9) DEFAULT NULL , 
   "contrasenia"   varchar(8) DEFAULT NULL , 
   "nombre"   varchar(200) DEFAULT NULL , 
   "idarea"   int DEFAULT NULL , 
   "nciclo"   int DEFAULT NULL , 
   "ciclo"   varchar(100) DEFAULT NULL , 
   "ncurso"   int DEFAULT NULL , 
   "curso"   varchar(200) DEFAULT NULL , 
   "calif"   varchar(100) DEFAULT NULL , 
   "estatus"   varchar(200) DEFAULT NULL , 
   "beca"   varchar(200) DEFAULT NULL , 
   "observacion"   varchar(500) DEFAULT NULL 
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table migrations
--

CREATE TABLE  "migrations" (
   "id" serial8 ,
   "migration"   varchar(191) NOT NULL, 
   "batch"   int NOT NULL, 
   primary key ("id")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table password_resets
--

CREATE TABLE  "password_resets" (
   "email"   varchar(191) NOT NULL, 
   "token"   varchar(191) NOT NULL, 
   "created_at"   timestamp NULL DEFAULT NULL
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table personal_access_tokens
--

CREATE TABLE  "personal_access_tokens" (
   "id" serial8 ,
   "tokenable_type"   varchar(191) NOT NULL, 
   "tokenable_id" bigint CHECK ("tokenable_id" >= 0) NOT NULL,
   "name"   varchar(191) NOT NULL, 
   "token"   varchar(64) NOT NULL, 
   "abilities"   text, 
   "last_used_at"   timestamp NULL DEFAULT NULL, 
   "created_at"   timestamp NULL DEFAULT NULL, 
   "updated_at"   timestamp NULL DEFAULT NULL, 
   primary key ("id"),
 unique ("token") 
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table plan_actual
--

CREATE TABLE  "plan_actual" (
   "id" serial8 ,
   "ncurso"   varchar(10) DEFAULT NULL , 
   "modulo"   varchar(10) DEFAULT NULL , 
   "clave"   varchar(100) DEFAULT NULL , 
   "nociclo"   int DEFAULT NULL , 
   "curso"   varchar(500) DEFAULT NULL , 
   "creditos"   int DEFAULT NULL , 
   "semestre"   varchar(10) DEFAULT NULL , 
   "anio"   varchar(20) DEFAULT NULL , 
   "idarea"   int DEFAULT NULL
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table plan_anterior
--

CREATE TABLE  "plan_anterior" (
   "id" serial8 ,
   "ncurso"   varchar(10) DEFAULT NULL , 
   "modulo"   varchar(10) DEFAULT NULL , 
   "clave"   varchar(100) DEFAULT NULL , 
   "nociclo"   int DEFAULT NULL , 
   "curso"   varchar(500) DEFAULT NULL , 
   "creditos"   int DEFAULT NULL , 
   "semestre"   varchar(10) DEFAULT NULL , 
   "anio"   varchar(20) DEFAULT NULL , 
   "idarea"   int DEFAULT NULL
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table sessions
--

CREATE TABLE  "sessions" (
   "id"   varchar(191) NOT NULL, 
   "user_id" bigint CHECK ("user_id" >= 0) DEFAULT NULL,
   "ip_address"   varchar(45) DEFAULT NULL, 
   "user_agent"   text, 
   "payload"   text NOT NULL, 
   "last_activity"   int NOT NULL, 
   primary key ("id")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tbbeca
--

CREATE TABLE  "tbbeca" (
   "idbeca" serial8 ,
   "fechasolic"   timestamp without time zone DEFAULT NULL, 
   "porcensolic"   int DEFAULT NULL, 
   "acepto"   char(3) DEFAULT NULL, 
   "idpersonales"   int DEFAULT NULL, 
   "tbeca"   int DEFAULT NULL , 
   "ciclo"   varchar(45) DEFAULT NULL, 
   primary key ("idbeca")
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tbcandidato
--

CREATE TABLE  "tbcandidato" (
   "idpersonales"   int NOT NULL, 
   "matricula"   varchar(50) DEFAULT NULL, 
   "documento"   varchar(40) DEFAULT NULL, 
   primary key ("idpersonales")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tbdatospersonales
--

CREATE TABLE  "tbdatospersonales" (
   "idpersonales" serial8 ,
   "matricula"   varchar(10) NOT NULL DEFAULT '', 
   "primerap"   varchar(60) DEFAULT NULL, 
   "segundoap"   varchar(60) DEFAULT NULL, 
   "nombre"   varchar(100) DEFAULT NULL, 
   "calle"   varchar(60) DEFAULT NULL, 
   "numext"   varchar(5) DEFAULT NULL, 
   "numint"   varchar(5) DEFAULT NULL, 
   "colonia"   varchar(30) DEFAULT NULL, 
   "ciudad"   varchar(50) DEFAULT NULL, 
   "cp"   varchar(10) DEFAULT NULL, 
   "estado"   varchar(50) DEFAULT NULL, 
   "email1"   varchar(60) DEFAULT NULL, 
   "email2"   varchar(60) DEFAULT NULL, 
   "ladacasa"   varchar(5) DEFAULT NULL, 
   "ladacel"   varchar(5) DEFAULT NULL, 
   "fecha_nacimiento"   varchar(15) DEFAULT NULL, 
   "edad"   varchar(45) DEFAULT NULL, 
   "edocivil"   varchar(15) DEFAULT NULL, 
   "rfc"   varchar(30) DEFAULT NULL, 
   "curp"   varchar(30) DEFAULT NULL, 
   "estatus"   varchar(50) DEFAULT NULL, 
   "telcasa"   varchar(30) DEFAULT NULL, 
   "telcel"   varchar(30) DEFAULT NULL, 
   "parentesco"   varchar(50) DEFAULT NULL , 
   "empresa"   varchar(80) DEFAULT NULL, 
   "puesto"   varchar(50) DEFAULT NULL, 
   "cdempresa"   varchar(50) DEFAULT NULL, 
   "edoempresa"   varchar(30) DEFAULT NULL, 
   "ladaempresa"   varchar(10) DEFAULT NULL, 
   "telempresa"   varchar(20) DEFAULT NULL, 
   "ciclo"   varchar(60) DEFAULT NULL, 
   "primerregistro"   varchar(45) DEFAULT NULL, 
   "fechasolic"   timestamp without time zone DEFAULT NULL, 
   primary key ("idpersonales")
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tc_estado
--

CREATE TABLE  "tc_estado" (
   "idtc_estado" serial8 ,
   "idtc_pais"   int NOT NULL DEFAULT '0' , 
   "nombre"   varchar(50) NOT NULL , 
   "abreviatura"   varchar(10) DEFAULT NULL , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   "claveedoinegi"   varchar(2) DEFAULT NULL , 
   primary key ("idtc_estado", "idtc_pais")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tc_localidad
--

CREATE TABLE  "tc_localidad" (
   "idtc_localidad" serial8 ,
   "idtc_municipio" int CHECK ("idtc_municipio" >= 0) NOT NULL DEFAULT '0',
   "nombre"   varchar(60) NOT NULL DEFAULT '', 
   "nombrecorto"   varchar(30) NOT NULL DEFAULT '', 
   "estatus" int CHECK ("estatus" >= 0) NOT NULL DEFAULT '0',
   "claveedoinegi"   varchar(2) DEFAULT NULL, 
   "clavempoinegi"   varchar(3) DEFAULT NULL, 
   primary key ("idtc_localidad", "idtc_municipio")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tc_municipio
--

CREATE TABLE  "tc_municipio" (
   "idtc_municipio" serial8 ,
   "idtc_estado"   int NOT NULL DEFAULT '0' , 
   "nombre"   varchar(60) NOT NULL , 
   "nombrecorto"   varchar(30) NOT NULL , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   "claveedoinegi"   varchar(2) DEFAULT NULL , 
   "clavempoinegi"   varchar(3) DEFAULT NULL , 
   primary key ("idtc_municipio", "idtc_estado")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tc_pais
--

CREATE TABLE  "tc_pais" (
   "idtc_pais" serial8  ,
   "nombre"   varchar(60) NOT NULL , 
   "abreviatura"   varchar(10) NOT NULL , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   "clavelada"   varchar(6) NOT NULL , 
   primary key ("idtc_pais")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcarea
--

CREATE TABLE  "tcarea" (
   "idtcarea" serial8  ,
   "nombre"   varchar(90) NOT NULL , 
   "nombrecorto"   varchar(30) NOT NULL , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   primary key ("idtcarea")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcbanco
--

CREATE TABLE  "tcbanco" (
   "idtcbanco" serial8  ,
   "nombre"   varchar(20) NOT NULL DEFAULT '' , 
   "estatus"   char(1) NOT NULL DEFAULT 'A' , 
   primary key ("idtcbanco"),
 unique ("nombre") 
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcconsejero
--

CREATE TABLE  "tcconsejero" (
   "idtcconsejero" serial8  ,
   "nombre"   varchar(30) NOT NULL , 
   "paterno"   varchar(30) DEFAULT NULL , 
   "materno"   varchar(30) DEFAULT NULL , 
   "correoinstitucional"   varchar(120) NOT NULL , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   primary key ("idtcconsejero")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcconstancias
--

CREATE TABLE  "tcconstancias" (
   "idtcconstancia" serial8  ,
   "nombre"   varchar(60) NOT NULL DEFAULT '' , 
   "estatus"   char(1) NOT NULL DEFAULT 'A' , 
   primary key ("idtcconstancia"),
 unique ("nombre") 
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcdelegacion
--

CREATE TABLE  "tcdelegacion" (
   "idtcdelegacion" serial8  ,
   "nombre"   varchar(90) NOT NULL , 
   "nombrecorto"   varchar(30) NOT NULL , 
   "domicilio"   varchar(120) NOT NULL , 
   "colonia"   varchar(40) DEFAULT NULL , 
   "codigopostal"   char(5) DEFAULT '00000' , 
   "localidad"   varchar(40) DEFAULT NULL , 
   "ladatelefono01"   varchar(3) DEFAULT NULL , 
   "numerotelefono01"   varchar(7) DEFAULT NULL , 
   "ladatelefono02"   varchar(3) DEFAULT NULL , 
   "numerotelefono02"   varchar(7) DEFAULT NULL , 
   "ladafax"   varchar(3) DEFAULT NULL , 
   "numerofax"   varchar(7) DEFAULT NULL , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   primary key ("idtcdelegacion"),
 unique ("nombre") 
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcdelegacionenlace
--

CREATE TABLE  "tcdelegacionenlace" (
   "idtcdelegacionenlace" serial8  ,
   "idtcdelegacion" int CHECK ("idtcdelegacion" >= 0) NOT NULL ,
   "idtcusuario" int CHECK ("idtcusuario" >= 0) NOT NULL,
   "nombre"   varchar(30) NOT NULL , 
   "paterno"   varchar(30) DEFAULT NULL , 
   "materno"   varchar(30) DEFAULT NULL , 
   "titulo"   varchar(10) DEFAULT NULL , 
   "correopersonal"   varchar(120) NOT NULL , 
   "ladacelualr"   varchar(3) DEFAULT NULL , 
   "numerocelular"   varchar(7) DEFAULT NULL , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   primary key ("idtcdelegacionenlace")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcfacilitador
--

CREATE TABLE  "tcfacilitador" (
   "idtcfacilitador" serial8  ,
   "nombre"   varchar(30) NOT NULL , 
   "paterno"   varchar(30) DEFAULT NULL , 
   "materno"   varchar(30) DEFAULT NULL , 
   "sexo"   char(1) NOT NULL , 
   "correoelectronico01"   varchar(120) DEFAULT NULL , 
   primary key ("idtcfacilitador")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcopcionmenu
--

CREATE TABLE  "tcopcionmenu" (
   "idtcopcionmenu" serial8  ,
   "nombre"   varchar(18) NOT NULL , 
   "paginaweb"   varchar(120) NOT NULL DEFAULT '#' , 
   "ordenpresentacion"   int NOT NULL DEFAULT '9999' , 
   "titulo"   varchar(120) DEFAULT NULL , 
   "utilizadopor"   varchar(30) NOT NULL , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   primary key ("idtcopcionmenu")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcopcionsubmenu
--

CREATE TABLE  "tcopcionsubmenu" (
   "idtcopcionsubmenu" serial8  ,
   "idtcopcionmenu" int CHECK ("idtcopcionmenu" >= 0) NOT NULL ,
   "nombre"   varchar(25) NOT NULL , 
   "paginaweb"   varchar(120) NOT NULL DEFAULT '#' , 
   "ordenpresentacion"   int NOT NULL DEFAULT '9999' , 
   "titulo"   varchar(120) DEFAULT NULL , 
   "descripcion"   text , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   primary key ("idtcopcionsubmenu")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcrolusuario
--

CREATE TABLE  "tcrolusuario" (
   "idtcrolusuario" serial8  ,
   "nombre"   varchar(60) NOT NULL , 
   "nombrecorto"   varchar(20) NOT NULL , 
   "nivel"   int NOT NULL DEFAULT '10' , 
   "paginainicio"   varchar(120) DEFAULT '#' , 
   "estatus"   int NOT NULL DEFAULT '1' , 
   primary key ("idtcrolusuario")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tcusuario
--

CREATE TABLE  "tcusuario" (
   "idtcusuario" serial8 ,
   "usuario"   varchar(15) NOT NULL , 
   "contrasenia"   varchar(15) NOT NULL , 
   "nombre"   varchar(30) NOT NULL , 
   "paterno"   varchar(30) DEFAULT NULL , 
   "materno"   varchar(30) DEFAULT NULL , 
   "estatus"   char(1) NOT NULL DEFAULT 'A' , 
   "idtcrolusuario" int CHECK ("idtcrolusuario" >= 0) DEFAULT NULL ,
   "idtcarea"   int DEFAULT NULL , 
   primary key ("idtcusuario"),
 unique ("usuario") 
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tdareaalumnos
--

CREATE TABLE  "tdareaalumnos" (
   "idarea" serial8 ,
   "area"   bytea DEFAULT NULL , 
   "clavearea"   varchar(200) DEFAULT NULL 
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tdbajas
--

CREATE TABLE  "tdbajas" (
   "idtdbajas" serial8 ,
   "matricula"   varchar(9) DEFAULT NULL, 
   "curp"   varchar(18) DEFAULT NULL, 
   "observaciones"   text, 
   "archivocarta"   varchar(150) DEFAULT NULL, 
   "fecha"   timestamp without time zone DEFAULT NULL, 
   primary key ("idtdbajas")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tdconstancias
--

CREATE TABLE  "tdconstancias" (
   "idtdconstancia" serial8 ,
   "curp"   varchar(18) DEFAULT NULL, 
   "matricula"   varchar(20) DEFAULT NULL, 
   "idtcconstancia"   varchar(60) DEFAULT NULL , 
   "lugarentrega"   varchar(90) DEFAULT NULL , 
   "observaciones"   text , 
   "ciclo"   varchar(60) DEFAULT NULL , 
   "fechasolicitud"   timestamp without time zone DEFAULT NULL , 
   "estatus"   char(1) DEFAULT '0' , 
   "idtcusuario"   char(1) DEFAULT NULL , 
   "fechaatencion"   timestamp without time zone DEFAULT NULL , 
   primary key ("idtdconstancia")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tdcredencial
--

CREATE TABLE  "tdcredencial" (
   "idtdcredencial" serial8 ,
   "matricula"   varchar(15) DEFAULT NULL, 
   "nombre"   varchar(80) DEFAULT NULL, 
   "calle"   varchar(80) DEFAULT NULL, 
   "interior"   varchar(10) DEFAULT NULL, 
   "ext"   varchar(10) DEFAULT NULL, 
   "colonia"   varchar(50) DEFAULT NULL, 
   "localidad"   varchar(50) DEFAULT NULL, 
   "municipio"   varchar(50) DEFAULT NULL, 
   "estado"   varchar(50) DEFAULT NULL, 
   "cp"   varchar(10) DEFAULT NULL, 
   "tel"   varchar(20) DEFAULT NULL , 
   "fecha"   timestamp without time zone DEFAULT NULL , 
   "foto"   varchar(150) DEFAULT NULL , 
   "correo"   varchar(60) DEFAULT NULL , 
   "tipo_solicitud"   varchar(20) DEFAULT NULL , 
   "comentarios"   text , 
   "aula"   varchar(150) DEFAULT NULL , 
   "curp"   varchar(150) DEFAULT NULL, 
   "status_pago"   int DEFAULT NULL , 
   primary key ("idtdcredencial")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tddocumentacion
--

CREATE TABLE  "tddocumentacion" (
   "idalumno" serial8 ,
   "matricula"   varchar(20) NOT NULL, 
   "tel"   varchar(30) DEFAULT NULL, 
   "actana"   varchar(30) DEFAULT NULL, 
   "certificado"   varchar(30) DEFAULT NULL, 
   "foliocer"   varchar(10) DEFAULT NULL, 
   "fechacer"   varchar(10) DEFAULT NULL, 
   "responsiva"   varchar(10) DEFAULT NULL, 
   "constancia"   varchar(30) DEFAULT NULL, 
   "boletas"   varchar(30) DEFAULT NULL, 
   "boletas1"   varchar(5) DEFAULT NULL, 
   "boletas2"   varchar(5) DEFAULT NULL, 
   "boletas3"   varchar(5) DEFAULT NULL, 
   "curp"   varchar(30) DEFAULT NULL, 
   "identificacion"   varchar(30) DEFAULT NULL, 
   "fotos"   varchar(30) DEFAULT NULL, 
   "deposito"   varchar(30) DEFAULT NULL, 
   "devactana"   varchar(50) DEFAULT NULL, 
   "devcertificado"   varchar(50) DEFAULT NULL, 
   "devresponsiva"   varchar(50) DEFAULT NULL, 
   "devconstancia"   varchar(50) DEFAULT NULL, 
   "devboletas"   varchar(50) DEFAULT NULL, 
   "devcurp"   varchar(50) DEFAULT NULL, 
   "devidentificacion"   varchar(50) DEFAULT NULL, 
   "devfotos"   varchar(50) DEFAULT NULL, 
   "devdeposito"   varchar(50) DEFAULT NULL, 
   "observaciones"   text, 
   "recibe"   varchar(90) DEFAULT NULL, 
   "otrorecibe"   varchar(90) DEFAULT NULL, 
   "fecha"   timestamp without time zone DEFAULT NULL, 
   primary key ("idalumno", "matricula")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tmotivopago
--

CREATE TABLE  "tmotivopago" (
   "id" serial8 ,
   "nombre"   varchar(50) DEFAULT NULL , 
   "estatus"   int DEFAULT NULL , 
   primary key ("id")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table toencuestaea
--

CREATE TABLE  "toencuestaea" (
   "idencuestaea" serial8  ,
   "matricula"   varchar(9) NOT NULL , 
   "ciclo"   varchar(45) DEFAULT NULL , 
   "fecha"   timestamp without time zone DEFAULT NULL , 
   "respuestas"   varchar(44) NOT NULL , 
   "colum1ar"   varchar(3) NOT NULL , 
   "colum2si"   varchar(3) NOT NULL , 
   "colum3vv"   varchar(3) NOT NULL , 
   "colum4sg"   varchar(3) NOT NULL , 
   "encuestaeacol"   varchar(45) DEFAULT NULL, 
   primary key ("idencuestaea")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table toencuestaorienta
--

CREATE TABLE  "toencuestaorienta" (
   "idtoencuestaorienta" serial8 ,
   "matricula"   varchar(9) NOT NULL, 
   "ciclo"   varchar(45) NOT NULL, 
   "fecha"   timestamp without time zone NOT NULL, 
   "respuestas"   varchar(90) NOT NULL, 
   "calculo"   int NOT NULL, 
   "cfisico"   int NOT NULL, 
   "cbiologico"   int NOT NULL, 
   "mecanico"   int NOT NULL, 
   "servsoc"   int NOT NULL, 
   "literario"   int NOT NULL, 
   "persuasivo"   int NOT NULL, 
   "artistico"   int NOT NULL, 
   "musical"   int NOT NULL, 
   "areaelegida"   varchar(45) NOT NULL, 
   primary key ("idtoencuestaorienta")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table toencuestatim
--

CREATE TABLE  "toencuestatim" (
   "idtoencuestatim" serial8  ,
   "respuesta_01_vi"   int NOT NULL DEFAULT '0' , 
   "respuesta_02_intra"   int NOT NULL DEFAULT '0' , 
   "respuesta_03_mu"   int NOT NULL DEFAULT '0' , 
   "respuesta_04_mu"   int NOT NULL DEFAULT '0' , 
   "respuesta_05_ma"   int NOT NULL , 
   "respuesta_06_intra"   int NOT NULL DEFAULT '0' , 
   "respuesta_07_ma"   int NOT NULL DEFAULT '0' , 
   "respuesta_08_k"   int NOT NULL DEFAULT '0' , 
   "respuesta_09_ve"   int NOT NULL DEFAULT '0' , 
   "respuesta_10_ve"   int NOT NULL DEFAULT '0' , 
   "respuesta_11_vi"   int NOT NULL DEFAULT '0' , 
   "respuesta_12_inter"   int NOT NULL DEFAULT '0' , 
   "respuesta_13_mu"   int NOT NULL DEFAULT '0' , 
   "respuesta_14_vi"   int NOT NULL DEFAULT '0' , 
   "respuesta_15_ma"   int NOT NULL DEFAULT '0' , 
   "respuesta_16_k"   int NOT NULL DEFAULT '0' , 
   "respuesta_17_ve"   int NOT NULL DEFAULT '0' , 
   "respuesta_18_inter"   int NOT NULL DEFAULT '0' , 
   "respuesta_19_k"   int NOT NULL DEFAULT '0' , 
   "respuesta_20_ma"   int NOT NULL DEFAULT '0' , 
   "respuesta_21_k"   int NOT NULL DEFAULT '0' , 
   "respuesta_22_ve"   int NOT NULL DEFAULT '0' , 
   "respuesta_23_vi"   int NOT NULL DEFAULT '0' , 
   "respuesta_24_mu"   int NOT NULL DEFAULT '0' , 
   "respuesta_25_ma"   int NOT NULL DEFAULT '0' , 
   "respuesta_26_intra"   int NOT NULL DEFAULT '0' , 
   "respuesta_27_vi"   int NOT NULL DEFAULT '0' , 
   "respuesta_28_mu"   int NOT NULL DEFAULT '0' , 
   "respuesta_29_k"   int NOT NULL DEFAULT '0' , 
   "respuesta_30_ve"   int NOT NULL DEFAULT '0' , 
   "respuesta_31_intra"   int NOT NULL DEFAULT '0' , 
   "respuesta_32_inter"   int NOT NULL DEFAULT '0' , 
   "respuesta_33_intra"   int NOT NULL DEFAULT '0' , 
   "respuesta_34_inter"   int NOT NULL DEFAULT '0' , 
   "respuesta_35_inter"   int NOT NULL DEFAULT '0' , 
   "resultado_vi"   int NOT NULL DEFAULT '0' , 
   "resultado_intra"   int NOT NULL DEFAULT '0' , 
   "resultado_mu"   int NOT NULL DEFAULT '0' , 
   "resultado_ma"   int NOT NULL DEFAULT '0' , 
   "resultado_k"   int NOT NULL DEFAULT '0' , 
   "resultado_ve"   int NOT NULL DEFAULT '0' , 
   "resultado_inter"   int NOT NULL DEFAULT '0' , 
   "matricula"   varchar(9) NOT NULL , 
   "fecha"   timestamp without time zone NOT NULL , 
   "ciclo"   varchar(45) NOT NULL , 
   primary key ("idtoencuestatim")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tomateriasbaja
--

CREATE TABLE  "tomateriasbaja" (
   "idtomateriasbaja" serial8  ,
   "matricula"   varchar(9) NOT NULL , 
   "clavemateria"   varchar(10) NOT NULL , 
   "materia"   varchar(120) NOT NULL , 
   "darbaja"   int NOT NULL , 
   "tipoestudiante"   char(1) NOT NULL DEFAULT 'N' , 
   "fechabaja"   timestamp without time zone DEFAULT NULL , 
   "estatus"   int DEFAULT '0' , 
   "claveciclo"   varchar(45) NOT NULL , 
   primary key ("idtomateriasbaja")
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table tparchivobanco
--

CREATE TABLE  "tparchivobanco" (
   "idtparchivobanco" serial8  ,
   "numerocuenta"   varchar(60) NOT NULL , 
   "fecha"   date NOT NULL , 
   "hora"   time NOT NULL , 
   "sucursal"   char(12) NOT NULL , 
   "clacon"   varchar(12) NOT NULL , 
   "descripcion"   varchar(120) NOT NULL , 
   "signo"   char(3) NOT NULL , 
   "importe"   decimal(14,0) NOT NULL , 
   "saldo"   decimal(14,0) NOT NULL , 
   "referencia"   varchar(24) NOT NULL , 
   "concepto"   varchar(132) NOT NULL , 
   "referenciabancaria"   varchar(60) NOT NULL , 
   "observaciones"   int DEFAULT '0' , 
   "idtcbanco"   int NOT NULL , 
   "idciclo"   int DEFAULT NULL , 
   "tipo"   varchar(50) DEFAULT NULL , 
   "fechaactualizacion"   date DEFAULT NULL , 
   primary key ("idtparchivobanco")
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table trtcrolusuario_tcopcionmenu
--

CREATE TABLE  "trtcrolusuario_tcopcionmenu" (
   "idtcrolusuario" int CHECK ("idtcrolusuario" >= 0) NOT NULL ,
   "idtcopcionmenu" int CHECK ("idtcopcionmenu" >= 0) NOT NULL 
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table trtcusuario_DatosAcademicosAspirante
--

CREATE TABLE  "trtcusuario_datosacademicosaspirante" (
   "idtcusuario" int CHECK ("idtcusuario" >= 0) NOT NULL ,
   "matricula"   varchar(9) NOT NULL , 
   "contrasenia"   varchar(15) NOT NULL , 
   "correoinstitucional"   varchar(120) DEFAULT NULL , 
 unique ("matricula") ,
 unique ("matricula", "contrasenia") 
)   ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;

--
-- Table structure for table users
--

CREATE TABLE  "users" (
   "id" serial8 ,
   "name"   varchar(191) NOT NULL, 
   "email"   varchar(191) NOT NULL, 
   "email_verified_at"   timestamp NULL DEFAULT NULL, 
   "password"   varchar(191) NOT NULL, 
   "two_factor_secret"   text, 
   "two_factor_recovery_codes"   text, 
   "remember_token"   varchar(100) DEFAULT NULL, 
   "current_team_id" bigint CHECK ("current_team_id" >= 0) DEFAULT NULL,
   "profile_photo_path"   varchar(2048) DEFAULT NULL, 
   "created_at"   timestamp NULL DEFAULT NULL, 
   "updated_at"   timestamp NULL DEFAULT NULL, 
   primary key ("id"),
 unique ("email") 
)    ;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
COMMENT ON COLUMN "cicloadministracion". "fechalimitecolegiatura2" IS 'Fecha de inicio de pago para estudiantes de reinscipción(un dia despues del termino del registro de inscripción del ciclo anterior)';
COMMENT ON COLUMN "alumnos". "nombrec" IS 'nombre completo del alumno';
COMMENT ON COLUMN "alumnos". "cp" IS 'codigo postal de la localidad del domicilio';
COMMENT ON COLUMN "alumnos". "telcasa" IS 'Telefono particular';
COMMENT ON COLUMN "alumnos". "horariocasa" IS 'Horario de telefono de casa';
COMMENT ON COLUMN "alumnos". "teltrab" IS 'Telefono del trabajo';
COMMENT ON COLUMN "alumnos". "horarioteltrab" IS 'horario telefono de casa';
COMMENT ON COLUMN "alumnos". "celular" IS 'Celular';
COMMENT ON COLUMN "alumnos". "horariocelular" IS 'Horario celular';
COMMENT ON COLUMN "alumnos". "idarea" IS 'Area formacion 1=Físico-Matematica,2=Químico-Biológicas,3=Económico-Administrativa,4=Humanidades-Sociales';
COMMENT ON COLUMN "alumnos". "tipoplan" IS 'Tipo plan 1=plan_anterior, 2=plan_actual';
COMMENT ON COLUMN "calificaciones_moodle". "idcursomodle" IS 'Id del registro del catalogo de cursos de Moodle';
COMMENT ON COLUMN "calificaciones_moodle". "idmdl_icc_tcciclo" IS 'Id del registro del catalogo de ciclos';
COMMENT ON TABLE "calificaciones_moodle" IS 'Actas de calificaciones finales';
COMMENT ON COLUMN "constancia_ctrl". "solicita" IS 'matricula del alumno';
COMMENT ON COLUMN "constancia_ctrl". "elabora" IS 'iniciales del que elabora';
COMMENT ON COLUMN "constancia_ctrl". "autoriza" IS 'iniciales del encargado de control escolar';
COMMENT ON COLUMN "constancia_ctrl". "firma" IS 'nombre coordinadocion';
COMMENT ON COLUMN "constancia_ctrl". "estatus" IS '1 atendido 2 cancelado';
COMMENT ON COLUMN "materias". "idregistro" IS 'id de registro de tabla materias';
COMMENT ON COLUMN "materias". "matricula" IS 'matricula del estudiante';
COMMENT ON COLUMN "materias". "contrasenia" IS 'contraseña del estudiante';
COMMENT ON COLUMN "materias". "nombre" IS 'nombre del estudiante';
COMMENT ON COLUMN "materias". "idarea" IS 'id del area a la que pertenece el alumno';
COMMENT ON COLUMN "materias". "nciclo" IS 'numero de ciclo';
COMMENT ON COLUMN "materias". "ciclo" IS 'ciclo';
COMMENT ON COLUMN "materias". "ncurso" IS 'numero de curso del catalogo de planes';
COMMENT ON COLUMN "materias". "curso" IS 'curso';
COMMENT ON COLUMN "materias". "calif" IS 'calificacion final en la materia';
COMMENT ON COLUMN "materias". "estatus" IS 'estatus, revalidacion, evc, etc';
COMMENT ON COLUMN "materias". "beca" IS '% de beca si existiese';
COMMENT ON COLUMN "materias". "observacion" IS 'observaciones';
CREATE INDEX "materias_idregistro_idx" ON "materias" USING btree ("idregistro");
CREATE INDEX "password_resets_email_idx" ON "password_resets" USING btree ("email");
CREATE INDEX "personal_access_tokens_1_idx" ON "personal_access_tokens" USING btree ("tokenable_type", "tokenable_id");
COMMENT ON COLUMN "plan_actual". "ncurso" IS 'numero de materia';
COMMENT ON COLUMN "plan_actual". "modulo" IS 'módulo al que pertenece';
COMMENT ON COLUMN "plan_actual". "clave" IS 'clave de la materia';
COMMENT ON COLUMN "plan_actual". "nociclo" IS 'número de ciclo al que pertenece la materia';
COMMENT ON COLUMN "plan_actual". "curso" IS 'nombre de la materia';
COMMENT ON COLUMN "plan_actual". "creditos" IS 'número de creditos de la materia';
COMMENT ON COLUMN "plan_actual". "semestre" IS 'semestre al que pertenece el curso (I,II,III,IV,V,VI)';
COMMENT ON COLUMN "plan_actual". "anio" IS 'año del curso';
CREATE INDEX "plan_actual_id_idx" ON "plan_actual" USING btree ("id");
COMMENT ON COLUMN "plan_anterior". "ncurso" IS 'numero de materia';
COMMENT ON COLUMN "plan_anterior". "modulo" IS 'módulo al que pertenece';
COMMENT ON COLUMN "plan_anterior". "clave" IS 'clave de la materia';
COMMENT ON COLUMN "plan_anterior". "nociclo" IS 'número de ciclo al que pertenece la materia';
COMMENT ON COLUMN "plan_anterior". "curso" IS 'nombre de la materia';
COMMENT ON COLUMN "plan_anterior". "creditos" IS 'número de creditos de la materia';
COMMENT ON COLUMN "plan_anterior". "semestre" IS 'semestre al que pertenece el curso (I,II,III,IV,V,VI)';
COMMENT ON COLUMN "plan_anterior". "anio" IS 'año del curso';
CREATE INDEX "plan_anterior_id_idx" ON "plan_anterior" USING btree ("id");
CREATE INDEX "sessions_user_id_idx" ON "sessions" USING btree ("user_id");
CREATE INDEX "sessions_last_activity_idx" ON "sessions" USING btree ("last_activity");
COMMENT ON COLUMN "tbbeca". "tbeca" IS '1=institucional 2=subistemas';
COMMENT ON COLUMN "tbdatospersonales". "parentesco" IS 'parentesco con el servidor publico o si es el titular';
COMMENT ON COLUMN "tc_estado". "idtc_pais" IS 'Id del registro del catalogo de Paises';
COMMENT ON COLUMN "tc_estado". "nombre" IS 'Nombre completo';
COMMENT ON COLUMN "tc_estado". "abreviatura" IS 'Nombre abreviado';
COMMENT ON COLUMN "tc_estado". "estatus" IS 'Estatus: 1=activo, 0=baja';
COMMENT ON COLUMN "tc_estado". "claveedoinegi" IS 'Clave del estado de acuerdo al INEGI solo para Mexico';
CREATE INDEX "tc_estado_idtc_pais_idx" ON "tc_estado" USING btree ("idtc_pais");
COMMENT ON TABLE "tc_estado" IS 'Catalogo de Estados o Provincias';
COMMENT ON COLUMN "tc_municipio". "idtc_estado" IS 'Id del registro del catalogo de Provincias';
COMMENT ON COLUMN "tc_municipio". "nombre" IS 'Nombre completo';
COMMENT ON COLUMN "tc_municipio". "nombrecorto" IS 'Nombre corto';
COMMENT ON COLUMN "tc_municipio". "estatus" IS 'Estatus: 1=activo, 0=baja';
COMMENT ON COLUMN "tc_municipio". "claveedoinegi" IS 'Clave de la Provincia de acuerdo al INEGI solo para Mexico';
COMMENT ON COLUMN "tc_municipio". "clavempoinegi" IS 'Clave del municipio de acuerdo al INEGI solo para Mexico';
CREATE INDEX "tc_municipio_idtc_estado_idx" ON "tc_municipio" USING btree ("idtc_estado");
COMMENT ON TABLE "tc_municipio" IS 'Catalogo de Municipios o Asentamientos';
COMMENT ON COLUMN "tc_pais". "idtc_pais" IS 'Id del registro';
COMMENT ON COLUMN "tc_pais". "nombre" IS 'Nombre completo';
COMMENT ON COLUMN "tc_pais". "abreviatura" IS 'Nombre abreviado';
COMMENT ON COLUMN "tc_pais". "estatus" IS 'Estatus: 1=activo, 0=baja';
COMMENT ON COLUMN "tc_pais". "clavelada" IS 'Clave de larga distancia automatica mundial';
COMMENT ON TABLE "tc_pais" IS 'Catalogo de Paises';
COMMENT ON COLUMN "tcarea". "idtcarea" IS 'Id del registro';
COMMENT ON COLUMN "tcarea". "nombre" IS 'Nombre completo';
COMMENT ON COLUMN "tcarea". "nombrecorto" IS 'Nombre corto o abreviacion';
COMMENT ON COLUMN "tcarea". "estatus" IS 'Estatus: 1=activo, 0=baja';
COMMENT ON TABLE "tcarea" IS 'Catalogo de areas del ICC e involucradas';
COMMENT ON COLUMN "tcbanco". "idtcbanco" IS 'Id del registro';
COMMENT ON COLUMN "tcbanco". "nombre" IS 'Nombre del banco';
COMMENT ON COLUMN "tcbanco". "estatus" IS 'Estatus: A=activo, B=baja';
COMMENT ON TABLE "tcbanco" IS 'Catalogo de bancos';
COMMENT ON COLUMN "tcconsejero". "idtcconsejero" IS 'Id del registro';
COMMENT ON COLUMN "tcconsejero". "nombre" IS 'Nombre(s)';
COMMENT ON COLUMN "tcconsejero". "paterno" IS 'Apellido paterno';
COMMENT ON COLUMN "tcconsejero". "materno" IS 'Apellido materno';
COMMENT ON COLUMN "tcconsejero". "correoinstitucional" IS 'Cuenta de correo institucional';
COMMENT ON COLUMN "tcconsejero". "estatus" IS 'Estatus: 1=activo, 0=baja';
COMMENT ON TABLE "tcconsejero" IS 'Catalogo de Consejeros de estudiantes';
COMMENT ON COLUMN "tcconstancias". "idtcconstancia" IS 'Id del registro';
COMMENT ON COLUMN "tcconstancias". "nombre" IS 'Nombre completo';
COMMENT ON COLUMN "tcconstancias". "estatus" IS 'Estatus: A=activo, B=baja';
COMMENT ON TABLE "tcconstancias" IS 'Catalogo de constancias';
COMMENT ON COLUMN "tcdelegacion". "idtcdelegacion" IS 'Id del registro';
COMMENT ON COLUMN "tcdelegacion". "nombre" IS 'Nombre completo';
COMMENT ON COLUMN "tcdelegacion". "nombrecorto" IS 'Nombre corto';
COMMENT ON COLUMN "tcdelegacion". "domicilio" IS 'Nombre de la Calle y Numero';
COMMENT ON COLUMN "tcdelegacion". "colonia" IS 'Colonia del domicilio';
COMMENT ON COLUMN "tcdelegacion". "codigopostal" IS 'Codigo Postal del domicilio';
COMMENT ON COLUMN "tcdelegacion". "localidad" IS 'Localidad del domicilio';
COMMENT ON COLUMN "tcdelegacion". "ladatelefono01" IS 'Clave LADA del telefono 1';
COMMENT ON COLUMN "tcdelegacion". "numerotelefono01" IS 'Numero telefonico del telefono 1';
COMMENT ON COLUMN "tcdelegacion". "ladatelefono02" IS 'Clave LADA del telefono 2';
COMMENT ON COLUMN "tcdelegacion". "numerotelefono02" IS 'Numero telefonico del telefono 2';
COMMENT ON COLUMN "tcdelegacion". "ladafax" IS 'Clave LADA del FAX';
COMMENT ON COLUMN "tcdelegacion". "numerofax" IS 'Numero telefonico del fax';
COMMENT ON COLUMN "tcdelegacion". "estatus" IS 'Estatus: 1=activa, 0=baja';
COMMENT ON TABLE "tcdelegacion" IS 'Catalogo de Delegaciones SEV';
COMMENT ON COLUMN "tcdelegacionenlace". "idtcdelegacionenlace" IS 'Id del registro';
COMMENT ON COLUMN "tcdelegacionenlace". "idtcdelegacion" IS 'Id del registro del catalogo de Delegaciones';
COMMENT ON COLUMN "tcdelegacionenlace". "nombre" IS 'Nombre(s)';
COMMENT ON COLUMN "tcdelegacionenlace". "paterno" IS 'Apellido paterno';
COMMENT ON COLUMN "tcdelegacionenlace". "materno" IS 'Apellido materno';
COMMENT ON COLUMN "tcdelegacionenlace". "titulo" IS 'Titulo univeritario obtenido';
COMMENT ON COLUMN "tcdelegacionenlace". "correopersonal" IS 'Cuenta de correo electronico personal';
COMMENT ON COLUMN "tcdelegacionenlace". "ladacelualr" IS 'Clave LADA del telefono celular';
COMMENT ON COLUMN "tcdelegacionenlace". "numerocelular" IS 'Numero telefonico del celular';
COMMENT ON COLUMN "tcdelegacionenlace". "estatus" IS 'Estatus: 1=activo, 0=baja';
CREATE INDEX "tcdelegacionenlace_idtcdelegacion_idx" ON "tcdelegacionenlace" USING btree ("idtcdelegacion");
CREATE INDEX "tcdelegacionenlace_idtcusuario_idx" ON "tcdelegacionenlace" USING btree ("idtcusuario");
ALTER TABLE "tcdelegacionenlace" ADD FOREIGN KEY ("idtcdelegacion") REFERENCES "tcdelegacion" ("idtcdelegacion");
ALTER TABLE "tcdelegacionenlace" ADD FOREIGN KEY ("idtcusuario") REFERENCES "tcusuario" ("idtcusuario");
COMMENT ON TABLE "tcdelegacionenlace" IS 'Catalogo de Enlaces en Delegaciones SEV';
COMMENT ON COLUMN "tcfacilitador". "idtcfacilitador" IS 'Id del registro';
COMMENT ON COLUMN "tcfacilitador". "nombre" IS 'Nombre(s)';
COMMENT ON COLUMN "tcfacilitador". "paterno" IS 'Apellido paterno';
COMMENT ON COLUMN "tcfacilitador". "materno" IS 'Apellido materno';
COMMENT ON COLUMN "tcfacilitador". "sexo" IS 'Sexo: M=mujer, H=hombre';
COMMENT ON COLUMN "tcfacilitador". "correoelectronico01" IS 'Correo electronico personal 1';
COMMENT ON TABLE "tcfacilitador" IS 'Catalogo de Facilitadores';
COMMENT ON COLUMN "tcopcionmenu". "idtcopcionmenu" IS 'Id del registro';
COMMENT ON COLUMN "tcopcionmenu". "nombre" IS 'Nombre breve de la opcion, de una a tres palabras a lo mas';
COMMENT ON COLUMN "tcopcionmenu". "paginaweb" IS 'Nombre del archivo al que direcciona la opcion (liga)';
COMMENT ON COLUMN "tcopcionmenu". "ordenpresentacion" IS 'Orden de presentacion de la opcion dentro del menu';
COMMENT ON COLUMN "tcopcionmenu". "titulo" IS 'Breve descripcion de lo que hace la opcion para desplegar en el atributo Title de la etiqueta HTML que se utilice.';
COMMENT ON COLUMN "tcopcionmenu". "utilizadopor" IS 'Comentario para describir a que roles esta dirigida la opcion';
COMMENT ON COLUMN "tcopcionmenu". "estatus" IS 'Estatus: 1=activo, 0=baja';
COMMENT ON TABLE "tcopcionmenu" IS 'Catalogo de Opciones de menu';
COMMENT ON COLUMN "tcopcionsubmenu". "idtcopcionsubmenu" IS 'Id del registro';
COMMENT ON COLUMN "tcopcionsubmenu". "idtcopcionmenu" IS 'Id del registro del catalogo de Opciones de menu';
COMMENT ON COLUMN "tcopcionsubmenu". "nombre" IS 'Nombre breve de la opcion';
COMMENT ON COLUMN "tcopcionsubmenu". "paginaweb" IS 'Nombre del archivo de la pagina a la que direcciona la opcion (link)';
COMMENT ON COLUMN "tcopcionsubmenu". "ordenpresentacion" IS 'Orden de presentacion de la opcion dentro del menu';
COMMENT ON COLUMN "tcopcionsubmenu". "titulo" IS 'Breve descripcion de lo que hace la opcion para desplegar en el atributo Title de la etiqueta HTML que se utilice.';
COMMENT ON COLUMN "tcopcionsubmenu". "descripcion" IS 'Descripcion completa de la opcion';
COMMENT ON COLUMN "tcopcionsubmenu". "estatus" IS 'Estatus: 1=activo, 0=baja';
CREATE INDEX "tcopcionsubmenu_idtcopcionmenu_idx" ON "tcopcionsubmenu" USING btree ("idtcopcionmenu");
ALTER TABLE "tcopcionsubmenu" ADD FOREIGN KEY ("idtcopcionmenu") REFERENCES "tcopcionmenu" ("idtcopcionmenu");
COMMENT ON TABLE "tcopcionsubmenu" IS 'Catalogo de opciones de submenu de acuerdo al menu';
COMMENT ON COLUMN "tcrolusuario". "idtcrolusuario" IS 'Id del registro';
COMMENT ON COLUMN "tcrolusuario". "nombre" IS 'Nombre completo';
COMMENT ON COLUMN "tcrolusuario". "nombrecorto" IS 'Nombre corto o abreviado';
COMMENT ON COLUMN "tcrolusuario". "nivel" IS 'Nivel de autorizacion para realizar acciones dentro del sistema: 1=Actualizar, 2=Act. parcial,3=Consultar,5=Consultar/Solicitar, 10=consultar y reportes.';
COMMENT ON COLUMN "tcrolusuario". "paginainicio" IS 'Pagina web de inicio';
COMMENT ON COLUMN "tcrolusuario". "estatus" IS 'Estatus: 1=activo, 0=baja';
COMMENT ON TABLE "tcrolusuario" IS 'Catalogo de Roles de Usuario';
COMMENT ON COLUMN "tcusuario". "usuario" IS 'Clave de usuario';
COMMENT ON COLUMN "tcusuario". "contrasenia" IS 'ContraseÃ±a del usuario';
COMMENT ON COLUMN "tcusuario". "nombre" IS 'Nombre del usuario';
COMMENT ON COLUMN "tcusuario". "paterno" IS 'Apellido paterno';
COMMENT ON COLUMN "tcusuario". "materno" IS 'Apellido materno';
COMMENT ON COLUMN "tcusuario". "estatus" IS 'Estatus: A=activo, B=baja';
COMMENT ON COLUMN "tcusuario". "idtcrolusuario" IS 'Id del registro del catalogo de Roles de usuario';
COMMENT ON COLUMN "tcusuario". "idtcarea" IS 'Id del registro del catalogo de Areas';
CREATE INDEX "tcusuario_idtcrolusuario_idx" ON "tcusuario" USING btree ("idtcrolusuario");
COMMENT ON TABLE "tcusuario" IS 'Catalogo de usuarios';
COMMENT ON COLUMN "tdareaalumnos". "area" IS 'nombre del area';
COMMENT ON COLUMN "tdareaalumnos". "clavearea" IS 'clave del area';
CREATE INDEX "tdareaalumnos_idarea_idx" ON "tdareaalumnos" USING btree ("idarea");
COMMENT ON COLUMN "tdconstancias". "idtcconstancia" IS 'Id del documento solicitado ne base al cátalogo tcconstancias';
COMMENT ON COLUMN "tdconstancias". "lugarentrega" IS 'Delegación donde el estudiante recogera su documento';
COMMENT ON COLUMN "tdconstancias". "observaciones" IS 'Comentarios generales del estudiante al solicitar su documento';
COMMENT ON COLUMN "tdconstancias". "ciclo" IS 'Ciclo en que se solicita el documento';
COMMENT ON COLUMN "tdconstancias". "fechasolicitud" IS 'Fecha en que el estudiante realiza su solicitud vía WEB';
COMMENT ON COLUMN "tdconstancias". "estatus" IS '0=Sin atención, 1=Atendida';
COMMENT ON COLUMN "tdconstancias". "idtcusuario" IS 'Id del usuario que atiende la petición del estudiante';
COMMENT ON COLUMN "tdconstancias". "fechaatencion" IS 'Fecha en que fue atendida la solicitud del estudiante';
COMMENT ON COLUMN "tdcredencial". "tel" IS 'Telefono del estudiante';
COMMENT ON COLUMN "tdcredencial". "fecha" IS 'Fecha en que realiza su solicitud';
COMMENT ON COLUMN "tdcredencial". "foto" IS 'Nombre del archivo-foto subida através de la solicitud';
COMMENT ON COLUMN "tdcredencial". "correo" IS 'Correo personal del estudiante';
COMMENT ON COLUMN "tdcredencial". "tipo_solicitud" IS 'Credencial por primera vez o Reposición';
COMMENT ON COLUMN "tdcredencial". "comentarios" IS 'Comentarios adicionales del estudiante al realizar su solicitud';
COMMENT ON COLUMN "tdcredencial". "aula" IS 'Delegación donde el estudiante desea recoger su credencial';
COMMENT ON COLUMN "tdcredencial". "status_pago" IS '1: alumno que ya realizó su pago 0: alumno que aún no realiza pago';
COMMENT ON COLUMN "tmotivopago". "nombre" IS 'nombre del motivo del pago';
COMMENT ON COLUMN "tmotivopago". "estatus" IS '1=activo, 0=inactivo';
COMMENT ON COLUMN "toencuestaea". "idencuestaea" IS 'Id del registro.';
COMMENT ON COLUMN "toencuestaea". "matricula" IS 'Matricula del alumno que contesto la encuesta.';
COMMENT ON COLUMN "toencuestaea". "ciclo" IS 'Ciclo de aplicacion de la encuesta.';
COMMENT ON COLUMN "toencuestaea". "fecha" IS 'Fecha y hora en que fue contestada la encuesta.';
COMMENT ON COLUMN "toencuestaea". "respuestas" IS 'Arreglo con las 44 respuestas de la encuesta';
COMMENT ON COLUMN "toencuestaea". "colum1ar" IS 'Resultado de la columna 1, activo - reflexivo.';
COMMENT ON COLUMN "toencuestaea". "colum2si" IS 'Resultado de la columna 2, Sensorial - Intuitivo.';
COMMENT ON COLUMN "toencuestaea". "colum3vv" IS 'Resultado de la columna 3, Visual - Verbal.';
COMMENT ON COLUMN "toencuestaea". "colum4sg" IS 'Resultado de la columna 4, secuencial - global.';
COMMENT ON TABLE "toencuestaea" IS 'Tabla para Encuesta Estilos Aprendizaje';
COMMENT ON COLUMN "toencuestatim". "idtoencuestatim" IS 'ID del registro';
COMMENT ON COLUMN "toencuestatim". "respuesta_01_vi" IS 'Respuesta de la pregunta 1 - visual: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_02_intra" IS 'Respuesta de la pregunta 2 - intrapersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_03_mu" IS 'Respuesta de la pregunta 3 - musical: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_04_mu" IS 'Respuesta de la pregunta 4 - musical: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_05_ma" IS 'Respuesta de la pregunta 5 - matematicas: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_06_intra" IS 'Respuesta de la pregunta 6 - intrapersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_07_ma" IS 'Respuesta de la pregunta 7 - matematicas: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_08_k" IS 'Respuesta de la pregunta 8 - kinestesica: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_09_ve" IS 'Respuesta de la pregunta 9 - verbal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_10_ve" IS 'Respuesta de la pregunta 10 - verbal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_11_vi" IS 'Respuesta de la pregunta 11 - visual: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_12_inter" IS 'Respuesta de la pregunta 12 - interpersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_13_mu" IS 'Respuesta de la pregunta 13 - musical: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_14_vi" IS 'Respuesta de la pregunta 14 - visual: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_15_ma" IS 'Respuesta de la pregunta 15 - matematicas: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_16_k" IS 'Respuesta de la pregunta 16 - kinestesico: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_17_ve" IS 'Respuesta de la pregunta 17 - verbal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_18_inter" IS 'Respuesta de la pregunta 18 - interpersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_19_k" IS 'Respuesta de la pregunta 19 - kinestesica: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_20_ma" IS 'Respuesta de la pregunta 20 - matematicas: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_21_k" IS 'Respuesta de la pregunta 21 - kinestesica: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_22_ve" IS 'Respuesta de la pregunta 22 - verbal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_23_vi" IS 'Respuesta de la pregunta 23 - visual: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_24_mu" IS 'Respuesta de la pregunta 24 - musical: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_25_ma" IS 'Respuesta de la pregunta 25 - matematicas: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_26_intra" IS 'Respuesta de la pregunta 26 - intrapersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_27_vi" IS 'Respuesta de la pregunta 27 - visual: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_28_mu" IS 'Respuesta de la pregunta 28 - musical: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_29_k" IS 'Respuesta de la pregunta 29 - kinestesica: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_30_ve" IS 'Respuesta de la pregunta 30 - verbal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_31_intra" IS 'Respuesta de la pregunta 31 - intra: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_32_inter" IS 'Respuesta de la pregunta 32 - interpersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_33_intra" IS 'Respuesta de la pregunta 33 - intrapersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_34_inter" IS 'Respuesta de la pregunta 34 - interpersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "respuesta_35_inter" IS 'Respuesta de la pregunta 35 - interpersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "resultado_vi" IS 'Sumatoria de todas las respuestas de la inteligencia visual: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "resultado_intra" IS 'Sumatoria de todas las respuestas de la inteligencia intrapersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "resultado_mu" IS 'Sumatoria de todas las respuestas de la inteligencia musical: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "resultado_ma" IS 'Sumatoria de todas las respuestas de la inteligencia matematica: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "resultado_k" IS 'Sumatoria de todas las respuestas de la inteligencia kinestesica: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "resultado_ve" IS 'Sumatoria de todas las respuestas de la inteligencia verbal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "resultado_inter" IS 'Sumatoria de todas las respuestas de la inteligencia interpersonal: 0=no, 1=si';
COMMENT ON COLUMN "toencuestatim". "matricula" IS 'Matricula del estudiante';
COMMENT ON COLUMN "toencuestatim". "fecha" IS 'Fecha y hora en la que constesta el test';
COMMENT ON COLUMN "toencuestatim". "ciclo" IS 'Ciclo en el que se contesta el test';
COMMENT ON TABLE "toencuestatim" IS 'Encuesta del test de inteligencias multiples';
COMMENT ON COLUMN "tomateriasbaja". "idtomateriasbaja" IS 'Id del registro';
COMMENT ON COLUMN "tomateriasbaja". "matricula" IS 'Matricula del estudiante';
COMMENT ON COLUMN "tomateriasbaja". "clavemateria" IS 'Clave de la Materia de acuerdo con el catalogo';
COMMENT ON COLUMN "tomateriasbaja". "materia" IS 'Nombre completo de la materia de acuerdo al catalogo';
COMMENT ON COLUMN "tomateriasbaja". "darbaja" IS 'Indicador para poder dar de baja la materia: 0=no, 1=si';
COMMENT ON COLUMN "tomateriasbaja". "tipoestudiante" IS 'Tipo de la materia que cursa el estudiante: N=normal, R=recursar, A=adelantar';
COMMENT ON COLUMN "tomateriasbaja". "fechabaja" IS 'Fecha y hora de la solicitud de baja';
COMMENT ON COLUMN "tomateriasbaja". "estatus" IS 'Estatus de la baja: 0=abierta, 1=solicitada';
COMMENT ON COLUMN "tomateriasbaja". "claveciclo" IS 'Clave del ciclo en que solicita la baja';
CREATE INDEX "tomateriasbaja_claveciclo_idx" ON "tomateriasbaja" USING btree ("claveciclo");
COMMENT ON TABLE "tomateriasbaja" IS 'Temporal para control de Baja de materias';
COMMENT ON COLUMN "tparchivobanco". "idtparchivobanco" IS 'Id del registro';
COMMENT ON COLUMN "tparchivobanco". "numerocuenta" IS 'Numero de cuenta bancaria';
COMMENT ON COLUMN "tparchivobanco". "fecha" IS 'Fecha del movimiento';
COMMENT ON COLUMN "tparchivobanco". "hora" IS 'Hora del movimiento';
COMMENT ON COLUMN "tparchivobanco". "sucursal" IS 'Numero de sucursal donde se realiza el movimiento';
COMMENT ON COLUMN "tparchivobanco". "clacon" IS 'Dato dummy';
COMMENT ON COLUMN "tparchivobanco". "descripcion" IS 'Descripcion del movimiento realizado';
COMMENT ON COLUMN "tparchivobanco". "signo" IS 'Signo del movimiento: +=abonos, -=cargos';
COMMENT ON COLUMN "tparchivobanco". "importe" IS 'Monto del movimiento';
COMMENT ON COLUMN "tparchivobanco". "saldo" IS 'Saldo de la cuenta despues del movimiento';
COMMENT ON COLUMN "tparchivobanco". "referencia" IS 'Numero de referencia o cheque';
COMMENT ON COLUMN "tparchivobanco". "concepto" IS 'Datos adicionales de la operacion (aqui viene la Referencia alfanumerica)';
COMMENT ON COLUMN "tparchivobanco". "referenciabancaria" IS 'Referencia bancaria alfanumerica';
COMMENT ON COLUMN "tparchivobanco". "observaciones" IS 'id del catalogo de tmotivopago';
COMMENT ON COLUMN "tparchivobanco". "idtcbanco" IS 'Id del registro del catalogo de Bancos';
COMMENT ON COLUMN "tparchivobanco". "idciclo" IS 'id del catalogo de ciclos';
COMMENT ON COLUMN "tparchivobanco". "tipo" IS 'Abono, condonado, saldo a favor, etc';
COMMENT ON COLUMN "tparchivobanco". "fechaactualizacion" IS 'fecha de actualizacion del motivo de pago';
COMMENT ON COLUMN "trtcrolusuario_tcopcionmenu". "idtcrolusuario" IS 'Id del registro del catalogo de Roles de usuario';
COMMENT ON COLUMN "trtcrolusuario_tcopcionmenu". "idtcopcionmenu" IS 'Id del registro del catalogo de opciones de menu';
CREATE INDEX "trtcrolusuario_tcopcionmenu_idtcrolusuario_idx" ON "trtcrolusuario_tcopcionmenu" USING btree ("idtcrolusuario");
CREATE INDEX "trtcrolusuario_tcopcionmenu_idtcopcionmenu_idx" ON "trtcrolusuario_tcopcionmenu" USING btree ("idtcopcionmenu");
ALTER TABLE "trtcrolusuario_tcopcionmenu" ADD FOREIGN KEY ("idtcopcionmenu") REFERENCES "tcopcionmenu" ("idtcopcionmenu");
ALTER TABLE "trtcrolusuario_tcopcionmenu" ADD FOREIGN KEY ("idtcrolusuario") REFERENCES "tcrolusuario" ("idtcrolusuario");
COMMENT ON TABLE "trtcrolusuario_tcopcionmenu" IS 'Establece la relacion entre las opciones del menu y los role';
COMMENT ON COLUMN "trtcusuario_datosacademicosaspirante". "idtcusuario" IS 'Id del registro del catalogo de Usuarios, siempre se debe corresponder con el dummy de Estudiante';
COMMENT ON COLUMN "trtcusuario_datosacademicosaspirante". "matricula" IS 'MatrÃ­cula del Estudiante';
COMMENT ON COLUMN "trtcusuario_datosacademicosaspirante". "contrasenia" IS 'Contrasenia de acceso';
COMMENT ON COLUMN "trtcusuario_datosacademicosaspirante". "correoinstitucional" IS 'Cuenta de correo institucional';
CREATE INDEX "trtcusuario_datosacademicosaspirante_idtcusuario_idx" ON "trtcusuario_datosacademicosaspirante" USING btree ("idtcusuario");
ALTER TABLE "trtcusuario_datosacademicosaspirante" ADD FOREIGN KEY ("idtcusuario") REFERENCES "tcusuario" ("idtcusuario");
COMMENT ON TABLE "trtcusuario_datosacademicosaspirante" IS 'Relacion estudiante con Usuario estudiante';
