-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: BachilleratoEnLinea
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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

--
-- Table structure for table `CicloAdministracion`
--

DROP TABLE IF EXISTS `CicloAdministracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CicloAdministracion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Clave` varchar(45) DEFAULT NULL,
  `Inicia` date DEFAULT NULL,
  `Termina` date DEFAULT NULL,
  `Activo` int DEFAULT NULL,
  `FechaLimiteDeposito` date DEFAULT NULL,
  `FechaConformarExpediente` date DEFAULT NULL,
  `FechaLimiteColegiatura2` date DEFAULT NULL COMMENT 'Fecha de inicio de pago para estudiantes de reinscipción(un dia despues del termino del registro de inscripción del ciclo anterior)',
  `FechaLimiteColegiatura3` date DEFAULT NULL,
  `UltimoFolio` varchar(9) DEFAULT NULL,
  `InicioCurso` date DEFAULT NULL,
  `FechaTaller` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DatosAcademicosAspirante`
--

DROP TABLE IF EXISTS `DatosAcademicosAspirante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DatosAcademicosAspirante` (
  `id` int NOT NULL AUTO_INCREMENT,
  `curp` varchar(18) DEFAULT NULL,
  `folio` varchar(9) DEFAULT NULL,
  `Referencia` varchar(20) DEFAULT NULL,
  `concluido` varchar(1) DEFAULT '',
  `manual` varchar(45) DEFAULT NULL,
  `ciclo` varchar(45) NOT NULL DEFAULT '',
  `fechaRegistro` datetime DEFAULT NULL,
  `grupo` varchar(15) DEFAULT NULL,
  `ordenMaterias` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`,`ciclo`)
) ENGINE=MyISAM AUTO_INCREMENT=6768 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DatosAdicionales`
--

DROP TABLE IF EXISTS `DatosAdicionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DatosAdicionales` (
  `curp` varchar(18) NOT NULL DEFAULT '',
  `computadoraInternet` char(2) DEFAULT NULL,
  `medio` varchar(45) DEFAULT NULL,
  `laborando` char(2) DEFAULT NULL,
  `numeroHoras` varchar(45) DEFAULT NULL,
  `capacidadesEspeciales` varchar(100) DEFAULT NULL,
  `ciclo` varchar(45) NOT NULL,
  PRIMARY KEY (`curp`,`ciclo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DatosEscuelaProcedencia`
--

DROP TABLE IF EXISTS `DatosEscuelaProcedencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DatosEscuelaProcedencia` (
  `curp` varchar(18) NOT NULL,
  `tipoAlumno` int DEFAULT NULL,
  `fechaConclusionSecundaria` date DEFAULT NULL,
  `promedio` int DEFAULT NULL,
  `pais` int DEFAULT NULL,
  `estado` int DEFAULT NULL,
  `otroEstado` varchar(255) DEFAULT NULL,
  `municipio` int DEFAULT NULL,
  `otroMunicipio` varchar(255) DEFAULT NULL,
  `nombreEscuela` varchar(100) DEFAULT NULL,
  `tipoProcedencia` int DEFAULT NULL,
  `folioCertificado` varchar(20) DEFAULT NULL,
  `ciclo` varchar(45) NOT NULL,
  PRIMARY KEY (`curp`,`ciclo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DatosSeguridad`
--

DROP TABLE IF EXISTS `DatosSeguridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DatosSeguridad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `curp` varchar(18) DEFAULT NULL,
  `respuesta1` varchar(255) DEFAULT NULL,
  `respuesta2` varchar(255) DEFAULT NULL,
  `respuesta3` varchar(255) DEFAULT NULL,
  `respuesta4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6303 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DatosTutor`
--

DROP TABLE IF EXISTS `DatosTutor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DatosTutor` (
  `curp` varchar(18) NOT NULL,
  `paterno` varchar(100) DEFAULT NULL,
  `materno` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `pais` int DEFAULT NULL,
  `estado` int DEFAULT NULL,
  `otroEstado` varchar(255) DEFAULT NULL,
  `municipio` int DEFAULT NULL,
  `otroMunicipio` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  `calle` varchar(100) DEFAULT NULL,
  `numExt` int DEFAULT NULL,
  `numInt` int DEFAULT NULL,
  `colonia` varchar(100) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lada` int DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `horario` varchar(25) DEFAULT NULL,
  `nivel` varchar(150) DEFAULT NULL,
  `ciclo` varchar(45) NOT NULL,
  PRIMARY KEY (`curp`,`ciclo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `idalumno` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(15) DEFAULT NULL,
  `contrasenia` varchar(10) DEFAULT NULL,
  `referencia` varchar(12) DEFAULT NULL,
  `paterno` varchar(100) DEFAULT NULL,
  `materno` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `nombrec` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL COMMENT 'nombre completo del alumno',
  `correoins` varchar(100) DEFAULT NULL,
  `correoper1` varchar(150) DEFAULT NULL,
  `correoper2` varchar(150) DEFAULT NULL,
  `curp` varchar(100) DEFAULT NULL,
  `fechanac` varchar(50) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `municipio` varchar(100) DEFAULT NULL,
  `localidad` varchar(100) DEFAULT NULL,
  `calle` varchar(150) DEFAULT NULL,
  `nint` int DEFAULT NULL,
  `next` int DEFAULT NULL,
  `colonia` varchar(150) DEFAULT NULL,
  `cp` int DEFAULT NULL COMMENT 'codigo postal de la localidad del domicilio',
  `telcasa` varchar(15) DEFAULT NULL COMMENT 'Telefono particular',
  `horariocasa` varchar(100) DEFAULT NULL COMMENT 'Horario de telefono de casa',
  `teltrab` varchar(15) DEFAULT NULL COMMENT 'Telefono del trabajo',
  `horarioteltrab` varchar(100) DEFAULT NULL COMMENT 'horario telefono de casa',
  `celular` varchar(15) DEFAULT NULL COMMENT 'Celular',
  `horariocelular` varchar(100) DEFAULT NULL COMMENT 'Horario celular',
  `idarea` int DEFAULT '0' COMMENT 'Area formacion 1=Físico-Matematica,2=Químico-Biológicas,3=Económico-Administrativa,4=Humanidades-Sociales',
  `tipoplan` int DEFAULT '0' COMMENT 'Tipo plan 1=plan_anterior, 2=plan_actual',
  PRIMARY KEY (`idalumno`),
  UNIQUE KEY `idalumno` (`idalumno`)
) ENGINE=InnoDB AUTO_INCREMENT=4199 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `calificaciones_moodle`
--

DROP TABLE IF EXISTS `calificaciones_moodle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones_moodle` (
  `idregistro` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `apaterno` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `amaterno` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `nombre` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `calletra` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `calnum` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `curso` varchar(180) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `grupo` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ciclo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `resultado` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idUsuario` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `horareg` date DEFAULT '0000-00-00',
  `idcursomodle` bigint unsigned NOT NULL COMMENT 'Id del registro del catalogo de cursos de Moodle',
  `idCurso` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idmdl_icc_tcciclo` bigint unsigned NOT NULL COMMENT 'Id del registro del catalogo de ciclos',
  PRIMARY KEY (`idregistro`)
) ENGINE=MyISAM AUTO_INCREMENT=92393 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci COMMENT='Actas de calificaciones finales';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `constancia_ctrl`
--

DROP TABLE IF EXISTS `constancia_ctrl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `constancia_ctrl` (
  `folio` int NOT NULL,
  `fecha` date NOT NULL DEFAULT '0000-00-00',
  `solicita` varchar(9) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL COMMENT 'matricula del alumno',
  `elabora` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL COMMENT 'iniciales del que elabora',
  `autoriza` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL COMMENT 'iniciales del encargado de control escolar',
  `firma` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL COMMENT 'nombre coordinadocion',
  `estatus` int NOT NULL COMMENT '1 atendido 2 cancelado'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_spanish2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datosComunicacion`
--

DROP TABLE IF EXISTS `datosComunicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datosComunicacion` (
  `curp` varchar(18) NOT NULL,
  `medioComunicacion` varchar(45) DEFAULT NULL,
  `email_1` varchar(100) DEFAULT NULL,
  `email_2` varchar(100) DEFAULT NULL,
  `lada_tel` varchar(3) DEFAULT NULL,
  `telefono` varchar(25) DEFAULT NULL,
  `hora_tel` varchar(150) DEFAULT NULL,
  `lada_cel` varchar(3) DEFAULT NULL,
  `celular` varchar(25) DEFAULT NULL,
  `hora_cel` varchar(150) DEFAULT NULL,
  `lada_oficina` varchar(3) DEFAULT NULL,
  `tel_oficina` varchar(25) DEFAULT NULL,
  `extension` int DEFAULT NULL,
  `hora_oficina` varchar(150) DEFAULT NULL,
  `ciclo` varchar(45) NOT NULL,
  PRIMARY KEY (`curp`,`ciclo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datosGeneralesAspirante`
--

DROP TABLE IF EXISTS `datosGeneralesAspirante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datosGeneralesAspirante` (
  `curp` varchar(18) NOT NULL,
  `paterno` varchar(100) DEFAULT NULL,
  `materno` varchar(100) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `genero` char(1) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `nacionalidad` varchar(45) DEFAULT NULL,
  `paisNac` int DEFAULT NULL,
  `estadoNac` int DEFAULT NULL,
  `otroEstado` varchar(255) DEFAULT NULL,
  `municipioNac` int DEFAULT NULL,
  `otroMunicipio` varchar(255) DEFAULT NULL,
  `localidadNac` text,
  `edoCivil` varchar(10) DEFAULT NULL,
  `ciclo` varchar(45) NOT NULL,
  PRIMARY KEY (`curp`,`ciclo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `datosResidenciaAspirante`
--

DROP TABLE IF EXISTS `datosResidenciaAspirante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datosResidenciaAspirante` (
  `curp` varchar(18) NOT NULL,
  `pais` int DEFAULT NULL,
  `estado` int DEFAULT NULL,
  `otroEstado` varchar(255) DEFAULT NULL,
  `municipio` int DEFAULT NULL,
  `otroMunicipio` varchar(255) DEFAULT NULL,
  `localidad` text,
  `calle` varchar(255) DEFAULT NULL,
  `numExt` int DEFAULT NULL,
  `numInt` int DEFAULT NULL,
  `colonia` varchar(45) DEFAULT NULL,
  `cp` int DEFAULT NULL,
  `ciclo` varchar(45) NOT NULL,
  PRIMARY KEY (`curp`,`ciclo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `idregistro` int NOT NULL AUTO_INCREMENT COMMENT 'id de registro de tabla materias',
  `matricula` varchar(9) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'matricula del estudiante',
  `contrasenia` varchar(8) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'contraseña del estudiante',
  `nombre` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'nombre del estudiante',
  `idarea` int DEFAULT NULL COMMENT 'id del area a la que pertenece el alumno',
  `nciclo` int DEFAULT NULL COMMENT 'numero de ciclo',
  `ciclo` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ciclo',
  `ncurso` int DEFAULT NULL COMMENT 'numero de curso del catalogo de planes',
  `curso` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'curso',
  `calif` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'calificacion final en la materia',
  `estatus` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'estatus, revalidacion, evc, etc',
  `beca` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '% de beca si existiese',
  `observacion` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'observaciones',
  KEY `idregistro` (`idregistro`)
) ENGINE=MyISAM AUTO_INCREMENT=44292 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plan_actual`
--

DROP TABLE IF EXISTS `plan_actual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_actual` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ncurso` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'numero de materia',
  `modulo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'módulo al que pertenece',
  `clave` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'clave de la materia',
  `nociclo` int DEFAULT NULL COMMENT 'número de ciclo al que pertenece la materia',
  `curso` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'nombre de la materia',
  `creditos` int DEFAULT NULL COMMENT 'número de creditos de la materia',
  `semestre` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'semestre al que pertenece el curso (I,II,III,IV,V,VI)',
  `anio` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'año del curso',
  `idarea` int DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `plan_anterior`
--

DROP TABLE IF EXISTS `plan_anterior`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plan_anterior` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ncurso` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'numero de materia',
  `modulo` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'módulo al que pertenece',
  `clave` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'clave de la materia',
  `nociclo` int DEFAULT NULL COMMENT 'número de ciclo al que pertenece la materia',
  `curso` varchar(500) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'nombre de la materia',
  `creditos` int DEFAULT NULL COMMENT 'número de creditos de la materia',
  `semestre` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'semestre al que pertenece el curso (I,II,III,IV,V,VI)',
  `anio` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'año del curso',
  `idarea` int DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbbeca`
--

DROP TABLE IF EXISTS `tbbeca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbbeca` (
  `idbeca` int NOT NULL AUTO_INCREMENT,
  `fechasolic` datetime DEFAULT NULL,
  `porcensolic` int DEFAULT NULL,
  `acepto` char(3) DEFAULT NULL,
  `idpersonales` int DEFAULT NULL,
  `tbeca` int DEFAULT NULL COMMENT '1=institucional 2=subistemas',
  `ciclo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idbeca`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbcandidato`
--

DROP TABLE IF EXISTS `tbcandidato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbcandidato` (
  `idpersonales` int NOT NULL,
  `matricula` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `documento` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idpersonales`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tbdatospersonales`
--

DROP TABLE IF EXISTS `tbdatospersonales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbdatospersonales` (
  `idpersonales` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(10) NOT NULL DEFAULT '',
  `primerap` varchar(60) DEFAULT NULL,
  `segundoap` varchar(60) DEFAULT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `calle` varchar(60) DEFAULT NULL,
  `numext` varchar(5) DEFAULT NULL,
  `numint` varchar(5) DEFAULT NULL,
  `colonia` varchar(30) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `email1` varchar(60) DEFAULT NULL,
  `email2` varchar(60) DEFAULT NULL,
  `ladacasa` varchar(5) DEFAULT NULL,
  `ladacel` varchar(5) DEFAULT NULL,
  `fecha_nacimiento` varchar(15) DEFAULT NULL,
  `edad` varchar(45) DEFAULT NULL,
  `edocivil` varchar(15) DEFAULT NULL,
  `rfc` varchar(30) DEFAULT NULL,
  `curp` varchar(30) DEFAULT NULL,
  `estatus` varchar(50) DEFAULT NULL,
  `telcasa` varchar(30) DEFAULT NULL,
  `telcel` varchar(30) DEFAULT NULL,
  `parentesco` varchar(50) DEFAULT NULL COMMENT 'parentesco con el servidor publico o si es el titular',
  `empresa` varchar(80) DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  `cdempresa` varchar(50) DEFAULT NULL,
  `edoempresa` varchar(30) DEFAULT NULL,
  `ladaempresa` varchar(10) DEFAULT NULL,
  `telempresa` varchar(20) DEFAULT NULL,
  `ciclo` varchar(60) DEFAULT NULL,
  `primerregistro` varchar(45) DEFAULT NULL,
  `fechasolic` datetime DEFAULT NULL,
  PRIMARY KEY (`idpersonales`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tc_estado`
--

DROP TABLE IF EXISTS `tc_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_estado` (
  `idtc_estado` int NOT NULL AUTO_INCREMENT,
  `idtc_pais` int NOT NULL DEFAULT '0' COMMENT 'Id del registro del catalogo de Paises',
  `nombre` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'Nombre completo',
  `abreviatura` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'Nombre abreviado',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activo, 0=baja',
  `claveedoinegi` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'Clave del estado de acuerdo al INEGI solo para Mexico',
  PRIMARY KEY (`idtc_estado`,`idtc_pais`),
  KEY `tc_estado_tc_pais_FK` (`idtc_pais`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb3 COMMENT='Catalogo de Estados o Provincias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tc_localidad`
--

DROP TABLE IF EXISTS `tc_localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_localidad` (
  `idtc_localidad` int unsigned NOT NULL AUTO_INCREMENT,
  `idtc_municipio` int unsigned NOT NULL DEFAULT '0',
  `nombre` varchar(60) NOT NULL DEFAULT '',
  `nombrecorto` varchar(30) NOT NULL DEFAULT '',
  `estatus` int unsigned NOT NULL DEFAULT '0',
  `claveedoinegi` varchar(2) DEFAULT NULL,
  `clavempoinegi` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`idtc_localidad`,`idtc_municipio`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tc_municipio`
--

DROP TABLE IF EXISTS `tc_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_municipio` (
  `idtc_municipio` int NOT NULL AUTO_INCREMENT,
  `idtc_estado` int NOT NULL DEFAULT '0' COMMENT 'Id del registro del catalogo de Provincias',
  `nombre` varchar(60) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'Nombre completo',
  `nombrecorto` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL COMMENT 'Nombre corto',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activo, 0=baja',
  `claveedoinegi` varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'Clave de la Provincia de acuerdo al INEGI solo para Mexico',
  `clavempoinegi` varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'Clave del municipio de acuerdo al INEGI solo para Mexico',
  PRIMARY KEY (`idtc_municipio`,`idtc_estado`),
  KEY `tc_municipio_tc_estado_FK` (`idtc_estado`)
) ENGINE=MyISAM AUTO_INCREMENT=2520 DEFAULT CHARSET=utf8mb3 COMMENT='Catalogo de Municipios o Asentamientos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tc_pais`
--

DROP TABLE IF EXISTS `tc_pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tc_pais` (
  `idtc_pais` int NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `nombre` varchar(60) NOT NULL COMMENT 'Nombre completo',
  `abreviatura` varchar(10) NOT NULL COMMENT 'Nombre abreviado',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activo, 0=baja',
  `clavelada` varchar(6) NOT NULL COMMENT 'Clave de larga distancia automatica mundial',
  PRIMARY KEY (`idtc_pais`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3 COMMENT='Catalogo de Paises';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcarea`
--

DROP TABLE IF EXISTS `tcarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcarea` (
  `idtcarea` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `nombre` varchar(90) NOT NULL COMMENT 'Nombre completo',
  `nombrecorto` varchar(30) NOT NULL COMMENT 'Nombre corto o abreviacion',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activo, 0=baja',
  PRIMARY KEY (`idtcarea`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='Catalogo de areas del ICC e involucradas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcbanco`
--

DROP TABLE IF EXISTS `tcbanco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcbanco` (
  `idtcbanco` int NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `nombre` varchar(20) NOT NULL DEFAULT '' COMMENT 'Nombre del banco',
  `estatus` char(1) NOT NULL DEFAULT 'A' COMMENT 'Estatus: A=activo, B=baja',
  PRIMARY KEY (`idtcbanco`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='Catalogo de bancos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcconsejero`
--

DROP TABLE IF EXISTS `tcconsejero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcconsejero` (
  `idtcconsejero` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `nombre` varchar(30) NOT NULL COMMENT 'Nombre(s)',
  `paterno` varchar(30) DEFAULT NULL COMMENT 'Apellido paterno',
  `materno` varchar(30) DEFAULT NULL COMMENT 'Apellido materno',
  `correoinstitucional` varchar(120) NOT NULL COMMENT 'Cuenta de correo institucional',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activo, 0=baja',
  PRIMARY KEY (`idtcconsejero`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Catalogo de Consejeros de estudiantes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcconstancias`
--

DROP TABLE IF EXISTS `tcconstancias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcconstancias` (
  `idtcconstancia` int NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `nombre` varchar(60) NOT NULL DEFAULT '' COMMENT 'Nombre completo',
  `estatus` char(1) NOT NULL DEFAULT 'A' COMMENT 'Estatus: A=activo, B=baja',
  PRIMARY KEY (`idtcconstancia`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='Catalogo de constancias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcdelegacion`
--

DROP TABLE IF EXISTS `tcdelegacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcdelegacion` (
  `idtcdelegacion` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `nombre` varchar(90) NOT NULL COMMENT 'Nombre completo',
  `nombrecorto` varchar(30) NOT NULL COMMENT 'Nombre corto',
  `domicilio` varchar(120) NOT NULL COMMENT 'Nombre de la Calle y Numero',
  `colonia` varchar(40) DEFAULT NULL COMMENT 'Colonia del domicilio',
  `codigopostal` char(5) DEFAULT '00000' COMMENT 'Codigo Postal del domicilio',
  `localidad` varchar(40) DEFAULT NULL COMMENT 'Localidad del domicilio',
  `ladatelefono01` varchar(3) DEFAULT NULL COMMENT 'Clave LADA del telefono 1',
  `numerotelefono01` varchar(7) DEFAULT NULL COMMENT 'Numero telefonico del telefono 1',
  `ladatelefono02` varchar(3) DEFAULT NULL COMMENT 'Clave LADA del telefono 2',
  `numerotelefono02` varchar(7) DEFAULT NULL COMMENT 'Numero telefonico del telefono 2',
  `ladafax` varchar(3) DEFAULT NULL COMMENT 'Clave LADA del FAX',
  `numerofax` varchar(7) DEFAULT NULL COMMENT 'Numero telefonico del fax',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activa, 0=baja',
  PRIMARY KEY (`idtcdelegacion`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COMMENT='Catalogo de Delegaciones SEV';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcdelegacionenlace`
--

DROP TABLE IF EXISTS `tcdelegacionenlace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcdelegacionenlace` (
  `idtcdelegacionenlace` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `idtcdelegacion` int unsigned NOT NULL COMMENT 'Id del registro del catalogo de Delegaciones',
  `idtcusuario` int unsigned NOT NULL,
  `nombre` varchar(30) NOT NULL COMMENT 'Nombre(s)',
  `paterno` varchar(30) DEFAULT NULL COMMENT 'Apellido paterno',
  `materno` varchar(30) DEFAULT NULL COMMENT 'Apellido materno',
  `titulo` varchar(10) DEFAULT NULL COMMENT 'Titulo univeritario obtenido',
  `correopersonal` varchar(120) NOT NULL COMMENT 'Cuenta de correo electronico personal',
  `ladacelualr` varchar(3) DEFAULT NULL COMMENT 'Clave LADA del telefono celular',
  `numerocelular` varchar(7) DEFAULT NULL COMMENT 'Numero telefonico del celular',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activo, 0=baja',
  PRIMARY KEY (`idtcdelegacionenlace`),
  KEY `tcdelegacionenlace_tcdelegacion_FK_idx` (`idtcdelegacion`),
  KEY `tcdelegacionenlace_tcusuario_FK_idx` (`idtcusuario`),
  CONSTRAINT `tcdelegacionenlace_tcdelegacion_FK` FOREIGN KEY (`idtcdelegacion`) REFERENCES `tcdelegacion` (`idtcdelegacion`),
  CONSTRAINT `tcdelegacionenlace_tcusuario_FK` FOREIGN KEY (`idtcusuario`) REFERENCES `tcusuario` (`idtcusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COMMENT='Catalogo de Enlaces en Delegaciones SEV';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcfacilitador`
--

DROP TABLE IF EXISTS `tcfacilitador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcfacilitador` (
  `idtcfacilitador` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `nombre` varchar(30) NOT NULL COMMENT 'Nombre(s)',
  `paterno` varchar(30) DEFAULT NULL COMMENT 'Apellido paterno',
  `materno` varchar(30) DEFAULT NULL COMMENT 'Apellido materno',
  `sexo` char(1) NOT NULL COMMENT 'Sexo: M=mujer, H=hombre',
  `correoelectronico01` varchar(120) DEFAULT NULL COMMENT 'Correo electronico personal 1',
  PRIMARY KEY (`idtcfacilitador`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COMMENT='Catalogo de Facilitadores';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcopcionmenu`
--

DROP TABLE IF EXISTS `tcopcionmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcopcionmenu` (
  `idtcopcionmenu` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `nombre` varchar(18) NOT NULL COMMENT 'Nombre breve de la opcion, de una a tres palabras a lo mas',
  `paginaweb` varchar(120) NOT NULL DEFAULT '#' COMMENT 'Nombre del archivo al que direcciona la opcion (liga)',
  `ordenpresentacion` int NOT NULL DEFAULT '9999' COMMENT 'Orden de presentacion de la opcion dentro del menu',
  `titulo` varchar(120) DEFAULT NULL COMMENT 'Breve descripcion de lo que hace la opcion para desplegar en el atributo Title de la etiqueta HTML que se utilice.',
  `utilizadopor` varchar(30) NOT NULL COMMENT 'Comentario para describir a que roles esta dirigida la opcion',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activo, 0=baja',
  PRIMARY KEY (`idtcopcionmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COMMENT='Catalogo de Opciones de menu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcopcionsubmenu`
--

DROP TABLE IF EXISTS `tcopcionsubmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcopcionsubmenu` (
  `idtcopcionsubmenu` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `idtcopcionmenu` int unsigned NOT NULL COMMENT 'Id del registro del catalogo de Opciones de menu',
  `nombre` varchar(25) NOT NULL COMMENT 'Nombre breve de la opcion',
  `paginaweb` varchar(120) NOT NULL DEFAULT '#' COMMENT 'Nombre del archivo de la pagina a la que direcciona la opcion (link)',
  `ordenpresentacion` int NOT NULL DEFAULT '9999' COMMENT 'Orden de presentacion de la opcion dentro del menu',
  `titulo` varchar(120) DEFAULT NULL COMMENT 'Breve descripcion de lo que hace la opcion para desplegar en el atributo Title de la etiqueta HTML que se utilice.',
  `descripcion` text COMMENT 'Descripcion completa de la opcion',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activo, 0=baja',
  PRIMARY KEY (`idtcopcionsubmenu`),
  KEY `tcopcionsubmenu_tcopcionmenu_FK_idx` (`idtcopcionmenu`),
  CONSTRAINT `tcopcionsubmenu_tcopcionmenu_FK` FOREIGN KEY (`idtcopcionmenu`) REFERENCES `tcopcionmenu` (`idtcopcionmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 COMMENT='Catalogo de opciones de submenu de acuerdo al menu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcrolusuario`
--

DROP TABLE IF EXISTS `tcrolusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcrolusuario` (
  `idtcrolusuario` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `nombre` varchar(60) NOT NULL COMMENT 'Nombre completo',
  `nombrecorto` varchar(20) NOT NULL COMMENT 'Nombre corto o abreviado',
  `nivel` int NOT NULL DEFAULT '10' COMMENT 'Nivel de autorizacion para realizar acciones dentro del sistema: 1=Actualizar, 2=Act. parcial,3=Consultar,5=Consultar/Solicitar, 10=consultar y reportes.',
  `paginainicio` varchar(120) DEFAULT '#' COMMENT 'Pagina web de inicio',
  `estatus` int NOT NULL DEFAULT '1' COMMENT 'Estatus: 1=activo, 0=baja',
  PRIMARY KEY (`idtcrolusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COMMENT='Catalogo de Roles de Usuario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tcusuario`
--

DROP TABLE IF EXISTS `tcusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcusuario` (
  `idtcusuario` int unsigned NOT NULL AUTO_INCREMENT,
  `usuario` varchar(15) NOT NULL COMMENT 'Clave de usuario',
  `contrasenia` varchar(15) NOT NULL COMMENT 'ContraseÃ±a del usuario',
  `nombre` varchar(30) NOT NULL COMMENT 'Nombre del usuario',
  `paterno` varchar(30) DEFAULT NULL COMMENT 'Apellido paterno',
  `materno` varchar(30) DEFAULT NULL COMMENT 'Apellido materno',
  `estatus` char(1) NOT NULL DEFAULT 'A' COMMENT 'Estatus: A=activo, B=baja',
  `idtcrolusuario` int unsigned DEFAULT NULL COMMENT 'Id del registro del catalogo de Roles de usuario',
  `idtcarea` int DEFAULT NULL COMMENT 'Id del registro del catalogo de Areas',
  PRIMARY KEY (`idtcusuario`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  KEY `tcusuario_tcrolusuario_FK` (`idtcrolusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1 COMMENT='Catalogo de usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tdareaalumnos`
--

DROP TABLE IF EXISTS `tdareaalumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdareaalumnos` (
  `idarea` int NOT NULL AUTO_INCREMENT,
  `area` varbinary(500) DEFAULT NULL COMMENT 'nombre del area',
  `clavearea` varchar(200) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL COMMENT 'clave del area',
  KEY `idarea` (`idarea`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tdbajas`
--

DROP TABLE IF EXISTS `tdbajas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdbajas` (
  `idtdbajas` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(9) DEFAULT NULL,
  `curp` varchar(18) DEFAULT NULL,
  `observaciones` text,
  `archivocarta` varchar(150) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idtdbajas`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tdconstancias`
--

DROP TABLE IF EXISTS `tdconstancias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdconstancias` (
  `idtdconstancia` int NOT NULL AUTO_INCREMENT,
  `curp` varchar(18) DEFAULT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `idtcconstancia` varchar(60) DEFAULT NULL COMMENT 'Id del documento solicitado ne base al cátalogo tcconstancias',
  `lugarentrega` varchar(90) DEFAULT NULL COMMENT 'Delegación donde el estudiante recogera su documento',
  `observaciones` text COMMENT 'Comentarios generales del estudiante al solicitar su documento',
  `ciclo` varchar(60) DEFAULT NULL COMMENT 'Ciclo en que se solicita el documento',
  `fechasolicitud` datetime DEFAULT NULL COMMENT 'Fecha en que el estudiante realiza su solicitud vía WEB',
  `estatus` char(1) DEFAULT '0' COMMENT '0=Sin atención, 1=Atendida',
  `idtcusuario` char(1) DEFAULT NULL COMMENT 'Id del usuario que atiende la petición del estudiante',
  `fechaatencion` datetime DEFAULT NULL COMMENT 'Fecha en que fue atendida la solicitud del estudiante',
  PRIMARY KEY (`idtdconstancia`)
) ENGINE=MyISAM AUTO_INCREMENT=481 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tdcredencial`
--

DROP TABLE IF EXISTS `tdcredencial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tdcredencial` (
  `idtdcredencial` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(15) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `calle` varchar(80) DEFAULT NULL,
  `interior` varchar(10) DEFAULT NULL,
  `ext` varchar(10) DEFAULT NULL,
  `colonia` varchar(50) DEFAULT NULL,
  `localidad` varchar(50) DEFAULT NULL,
  `municipio` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL COMMENT 'Telefono del estudiante',
  `fecha` datetime DEFAULT NULL COMMENT 'Fecha en que realiza su solicitud',
  `foto` varchar(150) DEFAULT NULL COMMENT 'Nombre del archivo-foto subida através de la solicitud',
  `correo` varchar(60) DEFAULT NULL COMMENT 'Correo personal del estudiante',
  `tipo_solicitud` varchar(20) DEFAULT NULL COMMENT 'Credencial por primera vez o Reposición',
  `comentarios` text COMMENT 'Comentarios adicionales del estudiante al realizar su solicitud',
  `aula` varchar(150) DEFAULT NULL COMMENT 'Delegación donde el estudiante desea recoger su credencial',
  `curp` varchar(150) DEFAULT NULL,
  `status_pago` int DEFAULT NULL COMMENT '1: alumno que ya realizó su pago 0: alumno que aún no realiza pago',
  PRIMARY KEY (`idtdcredencial`)
) ENGINE=MyISAM AUTO_INCREMENT=1148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tddocumentacion`
--

DROP TABLE IF EXISTS `tddocumentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tddocumentacion` (
  `idalumno` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) NOT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `actana` varchar(30) DEFAULT NULL,
  `certificado` varchar(30) DEFAULT NULL,
  `foliocer` varchar(10) DEFAULT NULL,
  `fechacer` varchar(10) DEFAULT NULL,
  `responsiva` varchar(10) DEFAULT NULL,
  `constancia` varchar(30) DEFAULT NULL,
  `boletas` varchar(30) DEFAULT NULL,
  `boletas1` varchar(5) DEFAULT NULL,
  `boletas2` varchar(5) DEFAULT NULL,
  `boletas3` varchar(5) DEFAULT NULL,
  `curp` varchar(30) DEFAULT NULL,
  `identificacion` varchar(30) DEFAULT NULL,
  `fotos` varchar(30) DEFAULT NULL,
  `deposito` varchar(30) DEFAULT NULL,
  `devactana` varchar(50) DEFAULT NULL,
  `devcertificado` varchar(50) DEFAULT NULL,
  `devresponsiva` varchar(50) DEFAULT NULL,
  `devconstancia` varchar(50) DEFAULT NULL,
  `devboletas` varchar(50) DEFAULT NULL,
  `devcurp` varchar(50) DEFAULT NULL,
  `devidentificacion` varchar(50) DEFAULT NULL,
  `devfotos` varchar(50) DEFAULT NULL,
  `devdeposito` varchar(50) DEFAULT NULL,
  `observaciones` text,
  `recibe` varchar(90) DEFAULT NULL,
  `otrorecibe` varchar(90) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idalumno`,`matricula`)
) ENGINE=MyISAM AUTO_INCREMENT=3626 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmotivopago`
--

DROP TABLE IF EXISTS `tmotivopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tmotivopago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL COMMENT 'nombre del motivo del pago',
  `estatus` int DEFAULT NULL COMMENT '1=activo, 0=inactivo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `toencuestaea`
--

DROP TABLE IF EXISTS `toencuestaea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toencuestaea` (
  `idencuestaea` int NOT NULL AUTO_INCREMENT COMMENT 'Id del registro.',
  `matricula` varchar(9) NOT NULL COMMENT 'Matricula del alumno que contesto la encuesta.',
  `ciclo` varchar(45) DEFAULT NULL COMMENT 'Ciclo de aplicacion de la encuesta.',
  `fecha` datetime DEFAULT NULL COMMENT 'Fecha y hora en que fue contestada la encuesta.',
  `respuestas` varchar(44) NOT NULL COMMENT 'Arreglo con las 44 respuestas de la encuesta',
  `colum1ar` varchar(3) NOT NULL COMMENT 'Resultado de la columna 1, activo - reflexivo.',
  `colum2si` varchar(3) NOT NULL COMMENT 'Resultado de la columna 2, Sensorial - Intuitivo.',
  `colum3vv` varchar(3) NOT NULL COMMENT 'Resultado de la columna 3, Visual - Verbal.',
  `colum4sg` varchar(3) NOT NULL COMMENT 'Resultado de la columna 4, secuencial - global.',
  `encuestaeacol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idencuestaea`)
) ENGINE=InnoDB AUTO_INCREMENT=357 DEFAULT CHARSET=latin1 COMMENT='Tabla para Encuesta Estilos Aprendizaje';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `toencuestaorienta`
--

DROP TABLE IF EXISTS `toencuestaorienta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toencuestaorienta` (
  `idtoencuestaorienta` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(9) NOT NULL,
  `ciclo` varchar(45) NOT NULL,
  `fecha` datetime NOT NULL,
  `respuestas` varchar(90) NOT NULL,
  `calculo` int NOT NULL,
  `cfisico` int NOT NULL,
  `cbiologico` int NOT NULL,
  `mecanico` int NOT NULL,
  `servsoc` int NOT NULL,
  `literario` int NOT NULL,
  `persuasivo` int NOT NULL,
  `artistico` int NOT NULL,
  `musical` int NOT NULL,
  `areaelegida` varchar(45) NOT NULL,
  PRIMARY KEY (`idtoencuestaorienta`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `toencuestatim`
--

DROP TABLE IF EXISTS `toencuestatim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toencuestatim` (
  `idtoencuestatim` int NOT NULL AUTO_INCREMENT COMMENT 'ID del registro',
  `respuesta_01_vi` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 1 - visual: 0=no, 1=si',
  `respuesta_02_intra` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 2 - intrapersonal: 0=no, 1=si',
  `respuesta_03_mu` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 3 - musical: 0=no, 1=si',
  `respuesta_04_mu` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 4 - musical: 0=no, 1=si',
  `respuesta_05_ma` int NOT NULL COMMENT 'Respuesta de la pregunta 5 - matematicas: 0=no, 1=si',
  `respuesta_06_intra` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 6 - intrapersonal: 0=no, 1=si',
  `respuesta_07_ma` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 7 - matematicas: 0=no, 1=si',
  `respuesta_08_k` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 8 - kinestesica: 0=no, 1=si',
  `respuesta_09_ve` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 9 - verbal: 0=no, 1=si',
  `respuesta_10_ve` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 10 - verbal: 0=no, 1=si',
  `respuesta_11_vi` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 11 - visual: 0=no, 1=si',
  `respuesta_12_inter` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 12 - interpersonal: 0=no, 1=si',
  `respuesta_13_mu` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 13 - musical: 0=no, 1=si',
  `respuesta_14_vi` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 14 - visual: 0=no, 1=si',
  `respuesta_15_ma` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 15 - matematicas: 0=no, 1=si',
  `respuesta_16_k` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 16 - kinestesico: 0=no, 1=si',
  `respuesta_17_ve` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 17 - verbal: 0=no, 1=si',
  `respuesta_18_inter` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 18 - interpersonal: 0=no, 1=si',
  `respuesta_19_k` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 19 - kinestesica: 0=no, 1=si',
  `respuesta_20_ma` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 20 - matematicas: 0=no, 1=si',
  `respuesta_21_k` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 21 - kinestesica: 0=no, 1=si',
  `respuesta_22_ve` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 22 - verbal: 0=no, 1=si',
  `respuesta_23_vi` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 23 - visual: 0=no, 1=si',
  `respuesta_24_mu` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 24 - musical: 0=no, 1=si',
  `respuesta_25_ma` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 25 - matematicas: 0=no, 1=si',
  `respuesta_26_intra` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 26 - intrapersonal: 0=no, 1=si',
  `respuesta_27_vi` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 27 - visual: 0=no, 1=si',
  `respuesta_28_mu` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 28 - musical: 0=no, 1=si',
  `respuesta_29_k` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 29 - kinestesica: 0=no, 1=si',
  `respuesta_30_ve` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 30 - verbal: 0=no, 1=si',
  `respuesta_31_intra` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 31 - intra: 0=no, 1=si',
  `respuesta_32_inter` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 32 - interpersonal: 0=no, 1=si',
  `respuesta_33_intra` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 33 - intrapersonal: 0=no, 1=si',
  `respuesta_34_inter` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 34 - interpersonal: 0=no, 1=si',
  `respuesta_35_inter` int NOT NULL DEFAULT '0' COMMENT 'Respuesta de la pregunta 35 - interpersonal: 0=no, 1=si',
  `resultado_vi` int NOT NULL DEFAULT '0' COMMENT 'Sumatoria de todas las respuestas de la inteligencia visual: 0=no, 1=si',
  `resultado_intra` int NOT NULL DEFAULT '0' COMMENT 'Sumatoria de todas las respuestas de la inteligencia intrapersonal: 0=no, 1=si',
  `resultado_mu` int NOT NULL DEFAULT '0' COMMENT 'Sumatoria de todas las respuestas de la inteligencia musical: 0=no, 1=si',
  `resultado_ma` int NOT NULL DEFAULT '0' COMMENT 'Sumatoria de todas las respuestas de la inteligencia matematica: 0=no, 1=si',
  `resultado_k` int NOT NULL DEFAULT '0' COMMENT 'Sumatoria de todas las respuestas de la inteligencia kinestesica: 0=no, 1=si',
  `resultado_ve` int NOT NULL DEFAULT '0' COMMENT 'Sumatoria de todas las respuestas de la inteligencia verbal: 0=no, 1=si',
  `resultado_inter` int NOT NULL DEFAULT '0' COMMENT 'Sumatoria de todas las respuestas de la inteligencia interpersonal: 0=no, 1=si',
  `matricula` varchar(9) NOT NULL COMMENT 'Matricula del estudiante',
  `fecha` datetime NOT NULL COMMENT 'Fecha y hora en la que constesta el test',
  `ciclo` varchar(45) NOT NULL COMMENT 'Ciclo en el que se contesta el test',
  PRIMARY KEY (`idtoencuestatim`)
) ENGINE=MyISAM AUTO_INCREMENT=319 DEFAULT CHARSET=latin1 COMMENT='Encuesta del test de inteligencias multiples';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tomateriasbaja`
--

DROP TABLE IF EXISTS `tomateriasbaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tomateriasbaja` (
  `idtomateriasbaja` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `matricula` varchar(9) NOT NULL COMMENT 'Matricula del estudiante',
  `clavemateria` varchar(10) NOT NULL COMMENT 'Clave de la Materia de acuerdo con el catalogo',
  `materia` varchar(120) NOT NULL COMMENT 'Nombre completo de la materia de acuerdo al catalogo',
  `darbaja` int NOT NULL COMMENT 'Indicador para poder dar de baja la materia: 0=no, 1=si',
  `tipoestudiante` char(1) NOT NULL DEFAULT 'N' COMMENT 'Tipo de la materia que cursa el estudiante: N=normal, R=recursar, A=adelantar',
  `fechabaja` datetime DEFAULT NULL COMMENT 'Fecha y hora de la solicitud de baja',
  `estatus` int DEFAULT '0' COMMENT 'Estatus de la baja: 0=abierta, 1=solicitada',
  `claveciclo` varchar(45) NOT NULL COMMENT 'Clave del ciclo en que solicita la baja',
  PRIMARY KEY (`idtomateriasbaja`),
  KEY `tomateriasbaja_claveciclo_IDX` (`claveciclo`)
) ENGINE=MyISAM AUTO_INCREMENT=293 DEFAULT CHARSET=latin1 COMMENT='Temporal para control de Baja de materias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tparchivobanco`
--

DROP TABLE IF EXISTS `tparchivobanco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tparchivobanco` (
  `idtparchivobanco` int unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id del registro',
  `numerocuenta` varchar(60) NOT NULL COMMENT 'Numero de cuenta bancaria',
  `fecha` date NOT NULL COMMENT 'Fecha del movimiento',
  `hora` time NOT NULL COMMENT 'Hora del movimiento',
  `sucursal` char(12) NOT NULL COMMENT 'Numero de sucursal donde se realiza el movimiento',
  `clacon` varchar(12) NOT NULL COMMENT 'Dato dummy',
  `descripcion` varchar(120) NOT NULL COMMENT 'Descripcion del movimiento realizado',
  `signo` char(3) NOT NULL COMMENT 'Signo del movimiento: +=abonos, -=cargos',
  `importe` decimal(14,0) NOT NULL COMMENT 'Monto del movimiento',
  `saldo` decimal(14,0) NOT NULL COMMENT 'Saldo de la cuenta despues del movimiento',
  `referencia` varchar(24) NOT NULL COMMENT 'Numero de referencia o cheque',
  `concepto` varchar(132) NOT NULL COMMENT 'Datos adicionales de la operacion (aqui viene la Referencia alfanumerica)',
  `referenciabancaria` varchar(60) NOT NULL COMMENT 'Referencia bancaria alfanumerica',
  `observaciones` int DEFAULT '0' COMMENT 'id del catalogo de tmotivopago',
  `idtcbanco` int NOT NULL COMMENT 'Id del registro del catalogo de Bancos',
  `idciclo` int DEFAULT NULL COMMENT 'id del catalogo de ciclos',
  `tipo` varchar(50) DEFAULT NULL COMMENT 'Abono, condonado, saldo a favor, etc',
  `fechaactualizacion` date DEFAULT NULL COMMENT 'fecha de actualizacion del motivo de pago',
  PRIMARY KEY (`idtparchivobanco`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trtcrolusuario_tcopcionmenu`
--

DROP TABLE IF EXISTS `trtcrolusuario_tcopcionmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trtcrolusuario_tcopcionmenu` (
  `idtcrolusuario` int unsigned NOT NULL COMMENT 'Id del registro del catalogo de Roles de usuario',
  `idtcopcionmenu` int unsigned NOT NULL COMMENT 'Id del registro del catalogo de opciones de menu',
  KEY `trtcrolusuario_tcopcionmenu_tcrolusaurio_FK_idx` (`idtcrolusuario`),
  KEY `trtcrolusuario_tcopcionmenu_tcopcionmenu_FK_idx` (`idtcopcionmenu`),
  CONSTRAINT `trtcrolusuario_tcopcionmenu_tcopcionmenu_FK` FOREIGN KEY (`idtcopcionmenu`) REFERENCES `tcopcionmenu` (`idtcopcionmenu`),
  CONSTRAINT `trtcrolusuario_tcopcionmenu_tcrolusaurio_FK` FOREIGN KEY (`idtcrolusuario`) REFERENCES `tcrolusuario` (`idtcrolusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Establece la relacion entre las opciones del menu y los role';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trtcusuario_DatosAcademicosAspirante`
--

DROP TABLE IF EXISTS `trtcusuario_DatosAcademicosAspirante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trtcusuario_DatosAcademicosAspirante` (
  `idtcusuario` int unsigned NOT NULL COMMENT 'Id del registro del catalogo de Usuarios, siempre se debe corresponder con el dummy de Estudiante',
  `matricula` varchar(9) NOT NULL COMMENT 'MatrÃ­cula del Estudiante',
  `contrasenia` varchar(15) NOT NULL COMMENT 'Contrasenia de acceso',
  `correoinstitucional` varchar(120) DEFAULT NULL COMMENT 'Cuenta de correo institucional',
  UNIQUE KEY `trtcusuario_DatosAcademicosAspirante_matricula_UQ` (`matricula`),
  UNIQUE KEY `trtcusuario_DatosAcademicosAspirante_matriculacontrasenia_UQ` (`matricula`,`contrasenia`),
  KEY `trtcusuario_DatosAcademicosAspirante_tcusuario_FK_idx` (`idtcusuario`),
  CONSTRAINT `trtcusuario_DatosAcademicosAspirante_tcusuario_FK` FOREIGN KEY (`idtcusuario`) REFERENCES `tcusuario` (`idtcusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Relacion estudiante con Usuario estudiante';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint unsigned DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-06  4:52:36
