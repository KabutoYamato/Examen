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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `postulante` int(11) NOT NULL,
  `pregunta` int(11) NOT NULL,
  `respuesta_1` int(11) NOT NULL,
  `respuesta_2` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `postulante` (`postulante`),
  KEY `pregunta` (`pregunta`),
  CONSTRAINT `examen_ibfk_1` FOREIGN KEY (`postulante`) REFERENCES `postulantes` (`id`),
  CONSTRAINT `examen_ibfk_2` FOREIGN KEY (`pregunta`) REFERENCES `preguntas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `examen` */

insert  into `examen`(`id`,`postulante`,`pregunta`,`respuesta_1`,`respuesta_2`) values (1,40,1,3,4),(2,40,2,3,4),(3,40,4,2,5),(4,40,5,3,4),(5,40,9,3,4),(6,40,22,3,4),(7,40,43,3,4),(8,40,1,3,4),(9,40,2,3,4),(10,40,4,2,5),(11,40,5,3,4),(12,40,9,3,4),(13,40,22,3,4),(14,40,43,3,4);

/*Table structure for table `postulantes` */

DROP TABLE IF EXISTS `postulantes`;

CREATE TABLE `postulantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) NOT NULL,
  `edad` int(4) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `postulantes` */

insert  into `postulantes`(`id`,`nombre`,`edad`,`correo`,`telefono`) values (2,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','9982056404'),(3,'Javier',29,'javier@gmail.com','9988776655'),(4,'Chava Script',26,'chava@gmail.com','9982056404'),(5,'Pedro Pablo Romero Martinez',20,'chava@gmail.com','9982056404'),(6,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','9988776655'),(7,'Pedro Pablo Romero Martinez',15,'pedrorm19@gmail.com','9982056404'),(8,'Pedro Pablo Romero Martinez',15,'pedrorm19@gmail.com','13'),(9,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(10,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(11,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(12,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(13,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(14,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(15,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','9982056404'),(16,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','9982056404'),(17,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(18,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(19,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(20,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(21,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(22,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(23,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(24,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(25,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(26,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(27,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(28,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(29,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(30,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','1233455678'),(31,'Chava Script',15,'pedrorm19@gmail.com','99823556'),(32,'Chava Script',15,'pedrorm19@gmail.com','99823556'),(33,'Chava Script',20,'pedrorm19@gmail.com','9982433534'),(34,'Pedro Pablo Romero Martinez',20,'chava@gmail.com','9982056404'),(35,'Pedro Pablo Romero Martinez',15,'pedrorm19@gmail.com','112323232'),(36,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','9982056404'),(37,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','9982056404'),(38,'Pedro Pablo Romero Martinez',20,'pedrorm19@gmail.com','9982056404'),(39,'pedro pablo romero martinez',20,'pedrorm19@gmail.com','9982056404'),(40,'kabuto yamato',20,'pedrorm19@gmail.com','9982056404');

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(20) DEFAULT NULL,
  `imagen` varchar(100) NOT NULL,
  `respuesta_1` varchar(5) NOT NULL,
  `respuesta_2` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

insert  into `preguntas`(`id`,`descripcion`,`imagen`,`respuesta_1`,`respuesta_2`) values (1,'pregunta 1','pregunta1.jpg','3',4),(2,'pregunta 2','pregunta2.jpg','3',4),(3,'pregunta 3','pregunta3.jpg','3',4),(4,'pregunta 4','pregunta4.jpg','3',4),(5,'pregunta 5','pregunta5.jpg','3',4),(6,'pregunta 6','pregunta6.jpg','3',4),(7,'pregunta 7','pregunta2.jpg','3',4),(8,'pregunta 8','pregunta3.jpg','3',4),(9,'pregunta 9','pregunta4.jpg','3',4),(10,'pregunta 10','pregunta5.jpg','3',4),(11,'pregunta 11','pregunta6.jpg','3',4),(12,'pregunta 12','pregunta12.jpg','3',4),(13,'pregunta 13','pregunta13.jpg','3',4),(14,'pregunta 14','pregunta14.jpg','3',4),(15,'pregunta 15','pregunta15.jpg','3',4),(16,'pregunta 16','pregunta16.jpg','3',4),(17,'pregunta 17','pregunta17.jpg','3',4),(18,'pregunta 18','pregunta18.jpg','3',4),(19,'pregunta 19','pregunta19.jpg','3',4),(20,'pregunta 20','pregunta20.jpg','3',4),(21,'pregunta 21','pregunta21.jpg','3',4),(22,'pregunta 22','pregunta22.jpg','3',4),(23,'pregunta 23','pregunta23.jpg','3',4),(24,'pregunta 24','pregunta24.jpg','3',4),(25,'pregunta 25','pregunta25.jpg','3',4),(26,'pregunta 26','pregunta26.jpg','3',4),(27,'pregunta 27','pregunta27.jpg','3',4),(28,'pregunta 28','pregunta28.jpg','3',4),(29,'pregunta 29','pregunta29.jpg','3',4),(30,'pregunta 30','pregunta30.jpg','3',4),(31,'pregunta 31','pregunta31.jpg','3',4),(32,'pregunta 32','pregunta32.jpg','3',4),(33,'pregunta 33','pregunta33.jpg','3',4),(34,'pregunta 34','pregunta34.jpg','3',4),(35,'pregunta 35','pregunta35.jpg','3',4),(36,'pregunta 36','pregunta36.jpg','3',4),(37,'pregunta 37','pregunta37.jpg','3',4),(38,'pregunta 38','pregunta38.jpg','3',4),(39,'pregunta 39','pregunta39.jpg','3',4),(40,'pregunta 40','pregunta40.jpg','3',4),(41,'pregunta 41','pregunta41.jpg','3',4),(42,'pregunta 42','pregunta42.jpg','3',4),(43,'pregunta 43','pregunta43.jpg','3',4),(44,'pregunta 44','pregunta44.jpg','3',4),(45,'pregunta 45','pregunta45.jpg','3',4),(46,'pregunta 46','pregunta46.jpg','3',4),(47,'pregunta 47','pregunta47.jpg','3',4),(48,'pregunta 48','pregunta48.jpg','3',4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
