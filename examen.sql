/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.32-MariaDB : Database - examen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`examen` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `examen`;

/*Table structure for table `examen` */

DROP TABLE IF EXISTS `examen`;

CREATE TABLE `examen` (
  `id` int(11) NOT NULL,
  `postulante` int(11) NOT NULL,
  `pregunta` int(11) NOT NULL,
  `respuesta` int(11) NOT NULL,
  KEY `postulante` (`postulante`),
  KEY `pregunta` (`pregunta`),
  CONSTRAINT `examen_ibfk_1` FOREIGN KEY (`postulante`) REFERENCES `postulantes` (`id`),
  CONSTRAINT `examen_ibfk_2` FOREIGN KEY (`pregunta`) REFERENCES `preguntas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `examen` */

/*Table structure for table `postulantes` */

DROP TABLE IF EXISTS `postulantes`;

CREATE TABLE `postulantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) NOT NULL,
  `edad` int(4) NOT NULL,
  `correo` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `postulantes` */

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  `imagen` varchar(100) NOT NULL,
  `respuesta` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
