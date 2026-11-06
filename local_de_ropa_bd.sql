/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.3.39-MariaDB-0ubuntu0.20.04.2 : Database - EFI_Guido_Quiroga
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`EFI_Guido_Quiroga` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `EFI_Guido_Quiroga`;

/*Table structure for table `articulo` */

DROP TABLE IF EXISTS `articulo`;

CREATE TABLE `articulo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `id_talle` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id_marca` (`id_marca`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_talle` (`id_talle`),
  CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`id_marca`) REFERENCES `marca` (`id`),
  CONSTRAINT `articulo_ibfk_2` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id`),
  CONSTRAINT `articulo_ibfk_3` FOREIGN KEY (`id_talle`) REFERENCES `talle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `articulo` */

insert  into `articulo`(`id`,`nombre`,`id_marca`,`id_talle`,`id_categoria`,`descripcion`,`activo`) values (1,'Remera Dri-FIT Training',1,3,1,'Remera deportiva de poliéster transpirable para entrenamiento',1),(2,'Musculosa Aeroready Running',2,2,2,'Musculosa liviana de secado rápido ideal para correr',1),(3,'Campera Windrunner Hooded',1,4,3,'Campera rompevientos impermeable con capucha',1),(4,'Buzo Essentials Fleece',2,5,4,'Buzo frizado con bolsillo canguro y capucha',1),(5,'Bermuda Sportswear Woven',1,3,5,'Bermuda urbana y deportiva de tela plana',1),(6,'Traje de Baño Pro Solid',3,2,6,'Malla de natación resistente al cloro',1),(7,'Pantalón Corto Challenger 7in',1,4,7,'Short de running con liner interno y bolsillos',1),(8,'Calza Techfit Compression',2,3,8,'Calza larga de compresión para alto rendimiento',1),(9,'Top Deportivo Medium Support',4,2,9,'Top de entrenamiento con soporte medio y tazas removibles',1),(10,'Remera Performance Seamless',4,3,1,'Remera sin costuras para evitar roces durante el ejercicio',1),(11,'Musculosa Speedwick Tank',5,2,2,'Musculosa respirable para entrenamientos de alta intensidad',1),(12,'Campera T7 Track Jacket',3,4,3,'Campera urbana deportiva estilo retro con cierre completo',1),(13,'Buzo Power Fleece Crew',3,5,4,'Buzo cuello redondo sin capucha de frisa pesada',1),(14,'Bermuda Workout Ready',5,4,5,'Bermuda de entrenamiento con cintura elástica y cordón',1),(15,'Traje de Baño Swim Shorts',7,3,6,'Short de baño playero de secado rápido',1),(16,'Pantalón Corto Squadra 21',2,3,7,'Short de fútbol clásico en tejido liviano',1),(17,'Calza 7/8 High Rise',1,2,8,'Calza 7/8 de tiro alto para yoga y gimnasio',1),(18,'Top HeatGear Sports Bra',4,1,9,'Top deportivo elastizado de secado ultra rápido',1),(19,'Remera Basic Training',6,4,1,'Remera de algodón mezclado para uso diario y deportivo',1),(20,'Musculosa Disruptor Fit',7,3,2,'Musculosa de corte holgado estilo urbano',1),(21,'Campera LTA Pro',8,5,3,'Campera deportiva de microfibra abrigada',1),(22,'Buzo Banda Taped',9,4,4,'Buzo frizado con cinta lateral distintiva de la marca',1),(23,'Bermuda Fleece Casual',6,3,5,'Bermuda de frisa suave para tiempo libre',1),(24,'Pantalón Corto Gel-Cool',10,4,7,'Short de running técnico ultraliviano',1),(25,'Calza Seamless Tight',3,2,8,'Calza modeladora sin costuras de ajuste anatómico',1),(26,'Top Infinity High Support',1,3,9,'Top de alto impacto diseñado para correr y saltar',1),(27,'Remera Strike Football',1,5,1,'Remera de entrenamiento de fútbol con ajuste estilizado',1),(28,'Musculosa Core Run',10,2,2,'Musculosa con detalles reflectantes para correr de noche',1),(29,'Campera Motion Vent',4,4,3,'Campera de abrigo liviano con paneles de ventilación',1),(30,'Buzo Training Hoodie',5,6,4,'Buzo con capucha talle grande reforzado',1),(31,'Pantalón Corto Retro 1911',7,3,7,'Short deportivo con diseño clásico y aberturas laterales',1),(32,'Calza Biker Short High',2,2,8,'Calza corta estilo ciclista de tiro alto',1),(33,'Top Don\'t Rest Bra',2,3,9,'Top ajustado para gimnasio con espalda deportiva',1),(34,'Remera Graphic Logo',3,6,1,'Remera urbana con estampado frontal en talle especial',1),(35,'Bermuda Pro Mesh',4,7,5,'Bermuda de básquetbol en tela calada ultra cómoda',1);

/*Table structure for table `articulo_talle` */

DROP TABLE IF EXISTS `articulo_talle`;

CREATE TABLE `articulo_talle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_articulo` int(11) NOT NULL,
  `id_talle` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id_articulo` (`id_articulo`),
  KEY `id_talle` (`id_talle`),
  CONSTRAINT `articulo_talle_ibfk_1` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id`),
  CONSTRAINT `articulo_talle_ibfk_2` FOREIGN KEY (`id_talle`) REFERENCES `talle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `articulo_talle` */

insert  into `articulo_talle`(`id`,`id_articulo`,`id_talle`,`activo`) values (1,1,1,0),(2,1,2,1),(3,1,3,1),(4,1,4,1),(5,1,5,0),(6,2,2,1),(7,2,3,1),(8,2,4,0),(9,3,3,1),(10,3,4,1),(11,3,5,1),(12,3,6,0),(13,4,3,1),(14,4,4,1),(15,4,5,1),(16,5,2,0),(17,5,3,1),(18,5,4,1),(19,6,2,1),(20,6,3,1),(21,7,3,1),(22,7,4,1),(23,7,5,0),(24,8,2,1),(25,8,3,1),(26,8,4,0),(27,9,1,1),(28,9,2,1),(29,9,3,0),(30,10,2,1),(31,10,3,1),(32,10,4,1),(33,12,3,1),(34,12,4,1),(35,12,5,0),(36,17,1,1),(37,17,2,1),(38,17,3,0),(39,25,2,1),(40,25,3,1),(41,30,5,1),(42,30,6,1),(43,30,7,0),(44,34,5,0),(45,34,6,1),(46,35,5,1),(47,35,6,1),(48,35,7,0);

/*Table structure for table `categoria` */

DROP TABLE IF EXISTS `categoria`;

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `categoria` */

insert  into `categoria`(`id`,`nombre`) values (1,'Remera'),(2,'Musculosa'),(3,'Campera'),(4,'Buzo'),(5,'Bermuda'),(6,'Traje de Baño'),(7,'Musculosa'),(8,'Calza'),(9,'Top');

/*Table structure for table `cliente` */

DROP TABLE IF EXISTS `cliente`;

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `id_tipo_iva` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_persona` (`id_persona`),
  KEY `id_tipo_iva` (`id_tipo_iva`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_tipo_iva`) REFERENCES `tipo_iva` (`id`),
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `cliente` */

insert  into `cliente`(`id`,`id_persona`,`id_tipo_iva`) values (1,1,1),(2,2,1),(3,3,2),(4,4,1),(5,5,1),(6,6,1),(7,7,3),(8,8,1),(9,9,2),(10,10,1),(11,11,1),(12,12,1),(13,13,1),(14,14,2),(15,15,1),(16,16,1),(17,17,1),(18,18,3),(19,19,1),(20,20,1);

/*Table structure for table `compra` */

DROP TABLE IF EXISTS `compra`;

CREATE TABLE `compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL COMMENT 'completo - pendiente - anulado',
  `id_medio_pago` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_proveedor` (`id_proveedor`),
  KEY `id_medio_pago` (`id_medio_pago`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`),
  CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id`),
  CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`id_medio_pago`) REFERENCES `medio_pago` (`id`),
  CONSTRAINT `compra_ibfk_4` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `compra` */

insert  into `compra`(`id`,`fecha`,`id_empleado`,`id_proveedor`,`estado`,`id_medio_pago`,`id_sucursal`,`descuento`,`total`) values (1,'2026-08-02 09:30:00',1,1,'Completada',2,1,15000.00,350000.00),(2,'2026-08-10 11:00:00',4,2,'Completada',2,2,NULL,280000.00),(3,'2026-08-19 15:20:00',1,3,'Completada',3,1,20000.00,420000.00),(4,'2026-08-28 10:45:00',4,4,'Completada',1,2,NULL,190000.00),(5,'2026-09-03 10:00:00',1,2,'Completada',2,1,25000.00,510000.00),(6,'2026-09-12 14:15:00',4,1,'Completada',2,2,10000.00,310000.00),(7,'2026-09-20 09:10:00',1,4,'Completada',1,1,NULL,220000.00),(8,'2026-09-27 16:30:00',4,3,'Completada',3,2,30000.00,480000.00),(9,'2026-10-04 11:20:00',1,1,'Completada',2,1,NULL,390000.00),(10,'2026-10-12 10:00:00',4,2,'Completada',2,2,18000.00,450000.00),(11,'2026-10-18 15:40:00',1,3,'Completada',3,1,12000.00,260000.00),(12,'2026-10-25 12:00:00',4,4,'Completada',2,2,NULL,330000.00);

/*Table structure for table `deposito` */

DROP TABLE IF EXISTS `deposito`;

CREATE TABLE `deposito` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `deposito` */

insert  into `deposito`(`id`,`nombre`) values (1,'Deposito 1');

/*Table structure for table `detalle_compra` */

DROP TABLE IF EXISTS `detalle_compra`;

CREATE TABLE `detalle_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_compra` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  `id_deposito` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_compra` (`id_compra`),
  KEY `id_articulo` (`id_articulo`),
  KEY `id_deposito` (`id_deposito`),
  CONSTRAINT `detalle_compra_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id`),
  CONSTRAINT `detalle_compra_ibfk_2` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id`),
  CONSTRAINT `detalle_compra_ibfk_3` FOREIGN KEY (`id_deposito`) REFERENCES `deposito` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `detalle_compra` */

insert  into `detalle_compra`(`id`,`id_compra`,`id_articulo`,`id_deposito`,`cantidad`,`precio`,`total`,`descuento`) values (1,1,1,1,10.00,15000.00,150000.00,0.00),(2,1,3,1,8.00,25000.00,200000.00,0.00),(3,2,2,1,15.00,10000.00,150000.00,0.00),(4,2,4,1,5.00,26000.00,130000.00,0.00),(5,3,8,1,12.00,20000.00,240000.00,0.00),(6,3,12,1,6.00,30000.00,180000.00,0.00),(7,4,15,1,10.00,11000.00,110000.00,0.00),(8,4,19,1,8.00,10000.00,80000.00,0.00),(9,5,21,1,10.00,35000.00,350000.00,0.00),(10,5,22,1,5.00,32000.00,160000.00,0.00),(11,6,5,1,10.00,11000.00,110000.00,0.00),(12,6,7,1,20.00,10000.00,200000.00,0.00),(13,7,9,1,10.00,13000.00,130000.00,0.00),(14,7,11,1,5.00,18000.00,90000.00,0.00),(15,8,26,1,8.00,35000.00,280000.00,0.00),(16,8,29,1,5.00,40000.00,200000.00,0.00),(17,9,30,1,6.00,40000.00,240000.00,0.00),(18,9,10,1,10.00,15000.00,150000.00,0.00),(19,10,13,1,10.00,25000.00,250000.00,0.00),(20,10,17,1,8.00,25000.00,200000.00,0.00),(21,11,33,1,10.00,14000.00,140000.00,0.00),(22,11,35,1,4.00,30000.00,120000.00,0.00),(23,12,16,1,15.00,10000.00,150000.00,0.00),(24,12,24,1,6.00,30000.00,180000.00,0.00);

/*Table structure for table `detalle_devolucion` */

DROP TABLE IF EXISTS `detalle_devolucion`;

CREATE TABLE `detalle_devolucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_devolucion` int(11) NOT NULL,
  `id_detalle_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_devolucion` (`id_devolucion`),
  KEY `id_detalle_venta` (`id_detalle_venta`),
  CONSTRAINT `detalle_devolucion_ibfk_1` FOREIGN KEY (`id_devolucion`) REFERENCES `devolucion` (`id`),
  CONSTRAINT `detalle_devolucion_ibfk_2` FOREIGN KEY (`id_detalle_venta`) REFERENCES `detalle_venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `detalle_devolucion` */

insert  into `detalle_devolucion`(`id`,`id_devolucion`,`id_detalle_venta`,`cantidad`,`descripcion`) values (1,1,2,1,'Devolución de prenda por cambio de talle M a L'),(2,2,9,1,'Zapatilla con despegue en la suela'),(3,3,27,1,'Prenda sin uso para cambio por otro modelo'),(4,4,37,1,'Campera con fallas en el cierre principal'),(5,5,45,1,'Devolución dentro del plazo sin marcas de uso');

/*Table structure for table `detalle_factura` */

DROP TABLE IF EXISTS `detalle_factura`;

CREATE TABLE `detalle_factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_factura` int(11) NOT NULL,
  `id_articulo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_factura` (`id_factura`),
  KEY `id_articulo` (`id_articulo`),
  CONSTRAINT `detalle_factura_ibfk_1` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id`),
  CONSTRAINT `detalle_factura_ibfk_2` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `detalle_factura` */

insert  into `detalle_factura`(`id`,`id_factura`,`id_articulo`) values (1,1,1),(2,2,3),(3,3,5),(4,4,8),(5,4,10),(6,5,2),(7,5,7),(8,6,19),(9,7,12),(10,7,13),(11,8,9),(12,9,4),(13,10,21),(14,10,26),(15,11,14),(16,12,17),(17,13,11),(18,14,29),(19,15,18),(20,16,22),(21,17,16),(22,18,27),(23,18,30),(24,19,6),(25,20,23),(26,21,29),(27,21,15),(28,22,20),(29,23,24),(30,24,25),(31,24,28),(32,25,3),(33,25,33),(34,26,31),(35,27,32),(36,27,9),(37,28,34),(38,28,35),(39,29,1),(40,30,12),(41,31,14),(42,32,4),(43,33,2),(44,34,21),(45,34,17),(46,35,22),(47,36,13),(48,36,5);

/*Table structure for table `detalle_venta` */

DROP TABLE IF EXISTS `detalle_venta`;

CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_articulo` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_deposito` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_articulo` (`id_articulo`),
  KEY `id_deposito` (`id_deposito`),
  KEY `id_venta` (`id_venta`),
  CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id`),
  CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_deposito`) REFERENCES `deposito` (`id`),
  CONSTRAINT `detalle_venta_ibfk_3` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `detalle_venta` */

insert  into `detalle_venta`(`id`,`id_articulo`,`id_venta`,`cantidad`,`precio`,`descuento`,`total`,`id_deposito`) values (1,1,1,1,25000.00,0.00,25000.00,1),(2,3,2,1,44000.00,2000.00,42000.00,1),(3,5,3,1,18500.00,0.00,18500.00,1),(4,8,4,1,35000.00,0.00,35000.00,1),(5,10,4,1,35000.00,5000.00,30000.00,1),(6,2,5,1,16000.00,0.00,16000.00,1),(7,7,5,1,15000.00,0.00,15000.00,1),(8,19,6,1,15000.00,0.00,15000.00,1),(9,12,7,1,48000.00,3000.00,45000.00,1),(10,13,7,1,49000.00,5000.00,44000.00,1),(11,9,8,1,22000.00,0.00,22000.00,1),(12,4,9,1,57000.00,3000.00,54000.00,1),(13,21,10,1,60000.00,5000.00,55000.00,1),(14,26,10,1,60000.00,5000.00,55000.00,1),(15,14,11,1,38000.00,0.00,38000.00,1),(16,17,12,1,45000.00,0.00,45000.00,1),(17,11,13,1,31000.00,1500.00,29500.00,1),(18,29,14,1,72000.00,0.00,72000.00,1),(19,18,15,1,19000.00,0.00,19000.00,1),(20,22,16,1,55000.00,4000.00,51000.00,1),(21,16,17,2,17000.00,0.00,34000.00,1),(22,27,18,1,38000.00,0.00,38000.00,1),(23,30,18,1,65000.00,5000.00,60000.00,1),(24,8,19,1,28000.00,0.00,28000.00,1),(25,23,20,1,41500.00,2500.00,39000.00,1),(26,29,21,1,70000.00,5000.00,65000.00,1),(27,15,21,1,22000.00,2000.00,20000.00,1),(28,20,22,1,17500.00,0.00,17500.00,1),(29,24,23,1,43000.00,0.00,43000.00,1),(30,25,24,1,40000.00,3000.00,37000.00,1),(31,28,24,1,25000.00,0.00,25000.00,1),(32,3,25,1,53000.00,3000.00,50000.00,1),(33,33,25,2,25000.00,5000.00,45000.00,1),(34,31,26,1,31000.00,0.00,31000.00,1),(35,32,27,1,25000.00,1000.00,24000.00,1),(36,9,27,1,25000.00,1000.00,24000.00,1),(37,34,28,1,27000.00,2000.00,25000.00,1),(38,35,28,2,50000.00,10000.00,90000.00,1),(39,1,29,1,24000.00,0.00,24000.00,1),(40,12,30,1,53000.00,0.00,53000.00,1),(41,14,31,1,39000.00,2000.00,37000.00,1),(42,4,32,1,68000.00,0.00,68000.00,1),(43,2,33,1,21000.00,0.00,21000.00,1),(44,21,34,1,50000.00,4000.00,46000.00,1),(45,17,34,1,38000.00,2000.00,36000.00,1),(46,22,35,1,46000.00,0.00,46000.00,1),(47,13,36,1,48000.00,2000.00,46000.00,1),(48,5,36,1,30000.00,2000.00,28000.00,1);

/*Table structure for table `devolucion` */

DROP TABLE IF EXISTS `devolucion`;

CREATE TABLE `devolucion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `motivo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_venta` (`id_venta`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `devolucion_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id`),
  CONSTRAINT `devolucion_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `devolucion` */

insert  into `devolucion`(`id`,`id_venta`,`id_empleado`,`fecha`,`motivo`) values (1,2,2,'2026-08-14 14:20:00','Talle incorrecto'),(2,7,1,'2026-09-06 11:15:00','Falla de fábrica en costura'),(3,21,5,'2026-08-17 17:30:00','Cambio por otro producto'),(4,28,4,'2026-09-22 10:45:00','Producto defectuoso'),(5,34,6,'2026-10-23 18:00:00','Arrepentimiento de compra');

/*Table structure for table `empleado` */

DROP TABLE IF EXISTS `empleado`;

CREATE TABLE `empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id_persona` (`id_persona`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`),
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `empleado` */

insert  into `empleado`(`id`,`id_persona`,`id_sucursal`,`cargo`,`activo`) values (1,21,1,'Encargado de Sucursal',1),(2,22,1,'Vendedor',1),(3,23,1,'Cajero',1),(4,24,2,'Encargado de Sucursal',1),(5,25,2,'Vendedor',1),(6,26,2,'Cajero',1);

/*Table structure for table `estado_civil` */

DROP TABLE IF EXISTS `estado_civil`;

CREATE TABLE `estado_civil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `estado_civil` */

insert  into `estado_civil`(`id`,`nombre`) values (1,'Soltero'),(2,'Casado'),(3,'Viudo'),(4,'Divorciado');

/*Table structure for table `factura` */

DROP TABLE IF EXISTS `factura`;

CREATE TABLE `factura` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venta` int(11) NOT NULL,
  `tipo_factura` varchar(5) NOT NULL COMMENT 'A - B - C',
  `total` decimal(10,2) NOT NULL,
  `estado` varchar(20) NOT NULL COMMENT 'Activo - anulada - pendiente',
  PRIMARY KEY (`id`),
  KEY `id_venta` (`id_venta`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `factura` */

insert  into `factura`(`id`,`id_venta`,`tipo_factura`,`total`,`estado`) values (1,1,'B',25000.00,'Emitida'),(2,2,'B',42000.00,'Emitida'),(3,3,'B',18500.00,'Emitida'),(4,4,'A',65000.00,'Emitida'),(5,5,'B',31000.00,'Emitida'),(6,6,'B',15000.00,'Emitida'),(7,7,'B',89000.00,'Emitida'),(8,8,'B',22000.00,'Emitida'),(9,9,'B',54000.00,'Emitida'),(10,10,'B',110000.00,'Emitida'),(11,11,'B',38000.00,'Emitida'),(12,12,'B',45000.00,'Emitida'),(13,13,'B',29500.00,'Emitida'),(14,14,'B',72000.00,'Emitida'),(15,15,'B',19000.00,'Emitida'),(16,16,'B',51000.00,'Emitida'),(17,17,'B',34000.00,'Emitida'),(18,18,'A',98000.00,'Emitida'),(19,19,'B',28000.00,'Emitida'),(20,20,'B',39000.00,'Emitida'),(21,21,'B',85000.00,'Emitida'),(22,22,'B',17500.00,'Emitida'),(23,23,'B',43000.00,'Emitida'),(24,24,'B',62000.00,'Emitida'),(25,25,'B',95000.00,'Emitida'),(26,26,'B',31000.00,'Emitida'),(27,27,'B',48000.00,'Emitida'),(28,28,'B',115000.00,'Emitida'),(29,29,'B',24000.00,'Emitida'),(30,30,'B',53000.00,'Emitida'),(31,31,'B',37000.00,'Emitida'),(32,32,'B',68000.00,'Emitida'),(33,33,'A',21000.00,'Emitida'),(34,34,'B',82000.00,'Emitida'),(35,35,'B',46000.00,'Emitida'),(36,36,'B',74000.00,'Emitida');

/*Table structure for table `historial_precio` */

DROP TABLE IF EXISTS `historial_precio`;

CREATE TABLE `historial_precio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precio_anterior` decimal(10,2) NOT NULL,
  `precio_nuevo` decimal(10,2) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_articulo_talle` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_articulo_talle` (`id_articulo_talle`),
  CONSTRAINT `historial_precio_ibfk_1` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`),
  CONSTRAINT `historial_precio_ibfk_2` FOREIGN KEY (`id_articulo_talle`) REFERENCES `articulo_talle` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `historial_precio` */

insert  into `historial_precio`(`id`,`precio_anterior`,`precio_nuevo`,`id_empleado`,`id_articulo_talle`,`fecha`) values (1,22000.00,25000.00,1,1,'2026-08-01 09:00:00'),(2,38000.00,44000.00,1,3,'2026-08-01 09:15:00'),(3,16000.00,18500.00,4,5,'2026-08-02 10:00:00'),(4,30000.00,35000.00,4,8,'2026-08-02 10:30:00'),(5,25000.00,28000.00,1,1,'2026-09-01 08:30:00'),(6,42000.00,48000.00,1,12,'2026-09-01 08:45:00'),(7,45000.00,52000.00,4,21,'2026-09-02 09:10:00'),(8,20000.00,22000.00,4,9,'2026-09-02 09:30:00'),(9,48000.00,55000.00,1,12,'2026-10-01 10:00:00'),(10,52000.00,60000.00,1,21,'2026-10-01 10:15:00'),(11,35000.00,40000.00,4,25,'2026-10-02 11:00:00'),(12,60000.00,68000.00,4,30,'2026-10-02 11:20:00');

/*Table structure for table `localidad` */

DROP TABLE IF EXISTS `localidad`;

CREATE TABLE `localidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `id_provincia` int(11) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id_provincia` (`id_provincia`),
  CONSTRAINT `localidad_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `localidad` */

insert  into `localidad`(`id`,`nombre`,`id_provincia`,`activo`) values (1,'Río Cuarto',6,1),(2,'Las Higueras',6,1),(3,'Holmberg',6,1),(4,'Sampacho',6,1),(5,'Alcira Gigena',6,1),(6,'Coronel Moldes',6,1),(7,'Adelia María',6,1),(8,'General Cabrera',6,1),(9,'Elena',6,1),(10,'Berrotarán',6,1);

/*Table structure for table `marca` */

DROP TABLE IF EXISTS `marca`;

CREATE TABLE `marca` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `marca` */

insert  into `marca`(`id`,`nombre`) values (1,'Nike'),(2,'Adidas'),(3,'Puma'),(4,'Under Armour'),(5,'Reebok'),(6,'Topper'),(7,'Fila'),(8,'Umbro'),(9,'Kappa'),(10,'Asics');

/*Table structure for table `medio_pago` */

DROP TABLE IF EXISTS `medio_pago`;

CREATE TABLE `medio_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `medio_pago` */

insert  into `medio_pago`(`id`,`nombre`) values (1,'Efectivo'),(2,'Transferencia'),(3,'QR'),(4,'T. Debito'),(5,'T. Credito');

/*Table structure for table `pais` */

DROP TABLE IF EXISTS `pais`;

CREATE TABLE `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pais` */

insert  into `pais`(`id`,`nombre`) values (1,'Argentina');

/*Table structure for table `persona` */

DROP TABLE IF EXISTS `persona`;

CREATE TABLE `persona` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `dni` varchar(8) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `id_tipo_dni` int(11) NOT NULL,
  `id_sexo` int(11) NOT NULL,
  `id_estado_civil` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_localidad` (`id_localidad`),
  KEY `id_estado_civil` (`id_estado_civil`),
  KEY `id_sexo` (`id_sexo`),
  KEY `id_tipo_dni` (`id_tipo_dni`),
  CONSTRAINT `persona_ibfk_2` FOREIGN KEY (`id_localidad`) REFERENCES `localidad` (`id`),
  CONSTRAINT `persona_ibfk_3` FOREIGN KEY (`id_estado_civil`) REFERENCES `estado_civil` (`id`),
  CONSTRAINT `persona_ibfk_4` FOREIGN KEY (`id_sexo`) REFERENCES `sexo` (`id`),
  CONSTRAINT `persona_ibfk_5` FOREIGN KEY (`id_tipo_dni`) REFERENCES `tipo_dni` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `persona` */

insert  into `persona`(`id`,`nombre`,`apellido`,`fecha_nacimiento`,`dni`,`telefono`,`direccion`,`mail`,`id_localidad`,`id_tipo_dni`,`id_sexo`,`id_estado_civil`) values (1,'Juan Carlos','Pérez','1988-04-12','33456789','0358-4567890','San Martín 450','juan.perez@gmail.com',1,1,1,1),(2,'María Belén','Gómez','1992-08-25','36789012','0358-4123456','Belgrano 120','mbgomez@hotmail.com',1,1,2,2),(3,'Carlos Alberto','Rodríguez','1975-11-03','24567890','0358-4987654','Alvear 890','crodriguez@yahoo.com.ar',1,1,1,2),(4,'Lucía','Fernández','1998-01-15','41234567','0358-4234567','Italia 340','lucia.f@gmail.com',2,1,2,1),(5,'Gonzalo Matías','López','2001-06-30','43567890','0358-4876543','Rivadavia 560','glopez@gmail.com',1,1,1,1),(6,'Ana Laura','Rossi','1983-09-18','30123456','0358-4345678','Sobremonte 210','anarossi@outlook.com',3,1,2,4),(7,'Diego Esteban','Martínez','1990-12-05','35678901','0358-4765432','Constitución 1020','dmartinez@gmail.com',1,1,1,1),(8,'Sofía Valentina','Romero','1995-03-22','38901234','0358-4456789','Colón 670','sromero@gmail.com',1,1,2,1),(9,'Roberto Omar','Sánchez','1968-07-14','20123456','0358-4654321','Deán Funes 150','rsanchez@hotmail.com',4,1,1,3),(10,'Camila Ignacia','Torres','2000-10-10','42890123','0358-4561234','Cabrera 430','ctorres@gmail.com',1,1,2,1),(11,'Nicolás Agustín','Díaz','1994-02-28','37890123','0358-4890123','Lamadrid 780','ndiaz@gmail.com',5,1,1,2),(12,'Florencia Antonella','Silva','1997-05-19','40123456','0358-4129876','General Paz 310','flor.silva@gmail.com',1,1,2,1),(13,'Lucas Emmanuel','Morales','1991-11-23','36111222','0358-4223344','Baigorria 510','lucas.morales@gmail.com',1,1,1,1),(14,'Mariana Soledad','Castro','1986-03-14','32333444','0358-4334455','Mendoza 820','mcastro@hotmail.com',1,1,2,2),(15,'Alejandro Javier','Peralta','1993-07-08','37555666','0358-4445566','Moreno 1050','aperalta@gmail.com',6,1,1,1),(16,'Victoria Eugenia','Acosta','1999-12-01','41777888','0358-4556677','Hipólito Yrigoyen 230','vacosta@outlook.com',1,1,2,1),(17,'Fernando Daniel','Molina','1980-05-17','28000111','0358-4667788','Vélez Sarsfield 640','fmolina@yahoo.com.ar',7,1,1,2),(18,'Patricia Inés','Juárez','1972-08-30','22222333','0358-4778899','Pringles 180','pjuarez@gmail.com',1,1,2,4),(19,'Tomás Ignacio','Blanco','2002-04-05','44111222','0358-4889900','Entre Ríos 390','tblanco@gmail.com',8,1,1,1),(20,'Natalia Andrea','Giménez','1989-10-27','34444555','0358-4990011','Bulevar Roca 1400','ngimenez@hotmail.com',1,1,2,2),(21,'Maximiliano Gabriel','Maidana','1996-01-20','39333444','0358-4112233','Salta 730','mmaidana@gmail.com',1,1,1,1),(22,'Daniela Paola','Carrizo','1993-09-11','37666777','0358-4223355','Jujuy 280','dcarrizo@outlook.com',9,1,2,1),(23,'Sebastián Exequiel','Benítez','1985-06-15','31888999','0358-4334466','La Rioja 910','sbenitez@gmail.com',1,1,1,2),(24,'Romina Elizabeth','Navarro','1991-04-03','35999000','0358-4445577','Catamarca 420','rnavarro@gmail.com',10,1,2,1),(25,'Marcos Adrián','Herrera','1978-12-24','26777888','0358-4556688','Corrientes 150','mherrera@yahoo.com.ar',1,1,1,3),(26,'Micaela Sol','Funes','2003-02-18','44888999','0358-4667799','Tucumán 660','mfunes@gmail.com',1,1,2,1),(27,'Jorge Luis','Córdoba','1982-11-12','29444555','0358-4778800','Córdoba 830','jcordoba@hotmail.com',2,1,1,2),(28,'Agustina María','Ojeda','1998-08-07','41111333','0358-4889911','San Lorenzo 540','aojeda@gmail.com',1,1,2,1),(29,'Facundo Hernán','Sosa','1995-10-31','38666888','0358-4990022','Independencia 320','fsosa@gmail.com',3,1,1,1),(30,'Brenda Gisela','Godoy','1990-03-25','35222444','0358-4112244','Alberdi 970','bgodoy@outlook.com',1,1,2,2);

/*Table structure for table `proveedor` */

DROP TABLE IF EXISTS `proveedor`;

CREATE TABLE `proveedor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `id_tipo_iva` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tipo_iva` (`id_tipo_iva`),
  KEY `id_persona` (`id_persona`),
  CONSTRAINT `proveedor_ibfk_1` FOREIGN KEY (`id_tipo_iva`) REFERENCES `tipo_iva` (`id`),
  CONSTRAINT `proveedor_ibfk_2` FOREIGN KEY (`id_persona`) REFERENCES `persona` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `proveedor` */

insert  into `proveedor`(`id`,`id_persona`,`id_tipo_iva`) values (1,27,3),(2,28,3),(3,29,2),(4,30,3);

/*Table structure for table `provincia` */

DROP TABLE IF EXISTS `provincia`;

CREATE TABLE `provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `id_pais` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_pais` (`id_pais`),
  CONSTRAINT `provincia_ibfk_1` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `provincia` */

insert  into `provincia`(`id`,`nombre`,`id_pais`) values (1,'Buenos Aires',1),(2,'Ciudad Autónoma de Buenos Aires',1),(3,'Catamarca',1),(4,'Chaco',1),(5,'Chubut',1),(6,'Córdoba',1),(7,'Corrientes',1),(8,'Entre Ríos',1),(9,'Formosa',1),(10,'Jujuy',1),(11,'La Pampa',1),(12,'La Rioja',1),(13,'Mendoza',1),(14,'Misiones',1),(15,'Neuquén',1),(16,'Río Negro',1),(17,'Salta',1),(18,'San Juan',1),(19,'San Luis',1),(20,'Santa Cruz',1),(21,'Santa Fe',1),(22,'Santiago del Estero',1),(23,'Tierra del Fuego',1),(24,'Tucumán',1);

/*Table structure for table `sexo` */

DROP TABLE IF EXISTS `sexo`;

CREATE TABLE `sexo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `sexo` */

insert  into `sexo`(`id`,`nombre`,`activo`) values (1,'Masculino',1),(2,'Femenino',1);

/*Table structure for table `stock` */

DROP TABLE IF EXISTS `stock`;

CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_articulo` int(11) NOT NULL,
  `id_deposito` int(11) NOT NULL,
  `cantidad` decimal(10,2) NOT NULL,
  `stock_min` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_deposito` (`id_deposito`),
  KEY `id_articulo` (`id_articulo`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_deposito`) REFERENCES `deposito` (`id`),
  CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`id_articulo`) REFERENCES `articulo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `stock` */

insert  into `stock`(`id`,`id_articulo`,`id_deposito`,`cantidad`,`stock_min`) values (1,1,1,25.00,10.00),(2,2,1,18.00,10.00),(3,3,1,12.00,5.00),(4,4,1,8.00,5.00),(5,5,1,30.00,10.00),(6,6,1,15.00,5.00),(7,7,1,40.00,15.00),(8,8,1,22.00,10.00),(9,9,1,14.00,5.00),(10,10,1,19.00,10.00),(11,11,1,9.00,5.00),(12,12,1,11.00,5.00),(13,13,1,28.00,10.00),(14,14,1,16.00,5.00),(15,15,1,35.00,15.00),(16,16,1,24.00,10.00),(17,17,1,13.00,5.00),(18,18,1,7.00,5.00),(19,19,1,21.00,10.00),(20,20,1,17.00,5.00),(21,21,1,14.00,5.00),(22,22,1,10.00,5.00),(23,23,1,6.00,5.00),(24,24,1,12.00,5.00),(25,25,1,20.00,10.00),(26,26,1,15.00,5.00),(27,27,1,8.00,5.00),(28,28,1,32.00,10.00),(29,29,1,11.00,5.00),(30,30,1,9.00,5.00),(31,31,1,26.00,10.00),(32,32,1,18.00,5.00),(33,33,1,22.00,10.00),(34,34,1,14.00,5.00),(35,35,1,10.00,5.00);

/*Table structure for table `sucursal` */

DROP TABLE IF EXISTS `sucursal`;

CREATE TABLE `sucursal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `id_localidad` int(11) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id_localidad` (`id_localidad`),
  CONSTRAINT `sucursal_ibfk_1` FOREIGN KEY (`id_localidad`) REFERENCES `localidad` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `sucursal` */

insert  into `sucursal`(`id`,`nombre`,`direccion`,`id_localidad`,`telefono`,`activo`) values (1,'Sucursal Centro','Constitución 650',1,'0358-4621001',1),(2,'Sucursal Sobremonte','Sobremonte 1120',1,'0358-4621002',1);

/*Table structure for table `talle` */

DROP TABLE IF EXISTS `talle`;

CREATE TABLE `talle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `talle` */

insert  into `talle`(`id`,`nombre`) values (1,'XS'),(2,'S'),(3,'M'),(4,'L'),(5,'XL'),(6,'XXL'),(7,'XXXL');

/*Table structure for table `tipo_dni` */

DROP TABLE IF EXISTS `tipo_dni`;

CREATE TABLE `tipo_dni` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tipo_dni` */

insert  into `tipo_dni`(`id`,`nombre`) values (1,'DNI'),(2,'Pasaporte');

/*Table structure for table `tipo_iva` */

DROP TABLE IF EXISTS `tipo_iva`;

CREATE TABLE `tipo_iva` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `tipo_iva` */

insert  into `tipo_iva`(`id`,`nombre`) values (1,'Consumidor Final'),(2,'Monotributo'),(3,'Responsable Inscripto');

/*Table structure for table `usuario` */

DROP TABLE IF EXISTS `usuario`;

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuario` */

insert  into `usuario`(`id`,`usuario`,`contraseña`) values (1,'jperez','pass123'),(2,'mgomez','pass123'),(3,'crodriguez','pass123'),(4,'lfernandez','pass123'),(5,'glopez','pass123'),(6,'arossi','pass123'),(7,'dmartinez','pass123'),(8,'sromero','pass123'),(9,'rsanchez','pass123'),(10,'ctorres','pass123'),(11,'ndiaz','pass123'),(12,'fsilva','pass123'),(13,'lmorales','pass123'),(14,'mcastro','pass123'),(15,'aperalta','pass123'),(16,'vacosta','pass123'),(17,'fmolina','pass123'),(18,'pjuarez','pass123'),(19,'tblanco','pass123'),(20,'ngimenez','pass123'),(21,'emp_mmaidana','emp2024'),(22,'emp_dcarrizo','emp2024'),(23,'emp_sbenitez','emp2024'),(24,'emp_rnavarro','emp2024'),(25,'emp_mherrera','emp2024'),(26,'emp_mfunes','emp2024');

/*Table structure for table `usuario_cliente` */

DROP TABLE IF EXISTS `usuario_cliente`;

CREATE TABLE `usuario_cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_cliente` (`id_cliente`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `usuario_cliente_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `usuario_cliente_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuario_cliente` */

insert  into `usuario_cliente`(`id`,`id_usuario`,`id_cliente`,`activo`) values (1,1,1,1),(2,2,2,1),(3,3,3,1),(4,4,4,1),(5,5,5,1),(6,6,6,1),(7,7,7,1),(8,8,8,1),(9,9,9,1),(10,10,10,1),(11,11,11,1),(12,12,12,1),(13,13,13,1),(14,14,14,1),(15,15,15,1),(16,16,16,1),(17,17,17,1),(18,18,18,1),(19,19,19,1),(20,20,20,1);

/*Table structure for table `usuario_empleado` */

DROP TABLE IF EXISTS `usuario_empleado`;

CREATE TABLE `usuario_empleado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `activo` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_usuario` (`id_usuario`),
  KEY `id_empleado` (`id_empleado`),
  CONSTRAINT `usuario_empleado_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  CONSTRAINT `usuario_empleado_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuario_empleado` */

insert  into `usuario_empleado`(`id`,`id_usuario`,`id_empleado`,`activo`) values (1,21,1,1),(2,22,2,1),(3,23,3,1),(4,24,4,1),(5,25,5,1),(6,26,6,1);

/*Table structure for table `venta` */

DROP TABLE IF EXISTS `venta`;

CREATE TABLE `venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_empleado` int(11) NOT NULL,
  `id_sucursal` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `activo` tinyint(1) NOT NULL DEFAULT 1,
  `descuento` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `id_empleado` (`id_empleado`),
  KEY `id_sucursal` (`id_sucursal`),
  CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`id_empleado`) REFERENCES `empleado` (`id`),
  CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`id_sucursal`) REFERENCES `sucursal` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `venta` */

insert  into `venta`(`id`,`fecha`,`id_cliente`,`id_empleado`,`id_sucursal`,`total`,`activo`,`descuento`) values (1,'2026-08-05 10:15:00',1,2,1,25000.00,1,NULL),(2,'2026-08-12 11:30:00',3,3,1,42000.00,1,2000.00),(3,'2026-08-18 17:45:00',5,2,1,18500.00,1,NULL),(4,'2026-08-22 16:20:00',7,1,1,65000.00,1,5000.00),(5,'2026-08-27 18:00:00',2,2,1,31000.00,1,NULL),(6,'2026-08-30 12:10:00',9,3,1,15000.00,1,NULL),(7,'2026-09-04 09:45:00',4,2,1,89000.00,1,8000.00),(8,'2026-09-10 15:30:00',6,3,1,22000.00,1,NULL),(9,'2026-09-15 19:15:00',8,1,1,54000.00,1,3000.00),(10,'2026-09-20 18:40:00',10,2,1,110000.00,1,10000.00),(11,'2026-09-22 11:00:00',12,3,1,38000.00,1,NULL),(12,'2026-09-28 20:05:00',11,2,1,45000.00,1,NULL),(13,'2026-10-08 10:20:00',13,1,1,29500.00,1,1500.00),(14,'2026-10-14 16:50:00',15,2,1,72000.00,1,NULL),(15,'2026-10-19 12:30:00',14,3,1,19000.00,1,NULL),(16,'2026-10-23 17:10:00',17,2,1,51000.00,1,4000.00),(17,'2026-10-27 11:15:00',16,1,1,34000.00,1,NULL),(18,'2026-10-31 18:30:00',18,3,1,98000.00,1,5000.00),(19,'2026-08-03 10:00:00',2,5,2,28000.00,1,NULL),(20,'2026-08-09 16:15:00',4,6,2,39000.00,1,2500.00),(21,'2026-08-15 18:20:00',6,4,2,85000.00,1,7000.00),(22,'2026-08-21 11:45:00',8,5,2,17500.00,1,NULL),(23,'2026-08-25 17:00:00',10,6,2,43000.00,1,NULL),(24,'2026-08-29 19:30:00',1,5,2,62000.00,1,3000.00),(25,'2026-09-02 11:10:00',11,4,2,95000.00,1,8000.00),(26,'2026-09-08 17:40:00',13,5,2,31000.00,1,NULL),(27,'2026-09-14 10:25:00',15,6,2,48000.00,1,2000.00),(28,'2026-09-19 18:50:00',17,5,2,115000.00,1,12000.00),(29,'2026-09-23 12:00:00',19,4,2,24000.00,1,NULL),(30,'2026-09-30 20:15:00',20,6,2,53000.00,1,NULL),(31,'2026-10-05 16:30:00',3,5,2,37000.00,1,2000.00),(32,'2026-10-11 11:05:00',5,6,2,68000.00,1,NULL),(33,'2026-10-17 17:55:00',7,4,2,21000.00,1,NULL),(34,'2026-10-21 10:40:00',9,5,2,82000.00,1,6000.00),(35,'2026-10-26 18:10:00',12,6,2,46000.00,1,NULL),(36,'2026-10-30 19:25:00',14,5,2,74000.00,1,4000.00);

/*Table structure for table `venta_medio_pago` */

DROP TABLE IF EXISTS `venta_medio_pago`;

CREATE TABLE `venta_medio_pago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_medio_pago` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_medio_pago` (`id_medio_pago`),
  KEY `id_venta` (`id_venta`),
  CONSTRAINT `venta_medio_pago_ibfk_1` FOREIGN KEY (`id_medio_pago`) REFERENCES `medio_pago` (`id`),
  CONSTRAINT `venta_medio_pago_ibfk_2` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `venta_medio_pago` */

insert  into `venta_medio_pago`(`id`,`id_medio_pago`,`id_venta`,`descripcion`) values (1,1,1,'Efectivo en caja'),(2,2,2,'Transferencia bancaria Bancor'),(3,1,3,'Efectivo en caja'),(4,5,4,'Tarjeta Crédito Visa - 1 cuota'),(5,3,5,'Cobro por QR Mercado Pago'),(6,1,6,'Efectivo en caja'),(7,5,7,'Tarjeta Crédito Mastercard - 3 cuotas'),(8,4,8,'Tarjeta Débito Visa'),(9,3,9,'Cobro por QR Mercado Pago'),(10,1,10,'Efectivo parcial $50.000'),(11,5,10,'Tarjeta Crédito Visa $60.000 - 3 cuotas'),(12,2,11,'Transferencia bancaria'),(13,1,12,'Efectivo en caja'),(14,4,13,'Tarjeta Débito Maestro'),(15,5,14,'Tarjeta Crédito Cordobesa - 6 cuotas'),(16,1,15,'Efectivo en caja'),(17,3,16,'Cobro por QR Mercado Pago'),(18,1,17,'Efectivo en caja'),(19,5,18,'Tarjeta Crédito Visa - 1 cuota'),(20,1,19,'Efectivo en caja'),(21,2,20,'Transferencia bancaria'),(22,5,21,'Tarjeta Crédito Mastercard - 3 cuotas'),(23,1,22,'Efectivo en caja'),(24,3,23,'Cobro por QR Mercado Pago'),(25,4,24,'Tarjeta Débito Visa'),(26,5,25,'Tarjeta Crédito Visa - 6 cuotas'),(27,1,26,'Efectivo en caja'),(28,2,27,'Transferencia bancaria Bancor'),(29,5,28,'Tarjeta Crédito Cordobesa - 3 cuotas'),(30,1,29,'Efectivo en caja'),(31,3,30,'Cobro por QR Mercado Pago'),(32,1,31,'Efectivo en caja'),(33,5,32,'Tarjeta Crédito Visa - 3 cuotas'),(34,1,33,'Efectivo en caja'),(35,2,34,'Transferencia bancaria'),(36,3,35,'Cobro por QR Mercado Pago'),(37,5,36,'Tarjeta Crédito Mastercard - 1 cuota');

/*Table structure for table `vista_stock_actual` */

DROP TABLE IF EXISTS `vista_stock_actual`;

/*!50001 DROP VIEW IF EXISTS `vista_stock_actual` */;
/*!50001 DROP TABLE IF EXISTS `vista_stock_actual` */;

/*!50001 CREATE TABLE  `vista_stock_actual`(
 `id_articulo` int(11) ,
 `articulo` varchar(100) ,
 `marca` varchar(100) ,
 `talle` varchar(50) ,
 `deposito` varchar(50) ,
 `cantidad` decimal(10,2) 
)*/;

/*View structure for view vista_stock_actual */

/*!50001 DROP TABLE IF EXISTS `vista_stock_actual` */;
/*!50001 DROP VIEW IF EXISTS `vista_stock_actual` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`BD2021`@`%` SQL SECURITY DEFINER VIEW `vista_stock_actual` AS select `articulo`.`id` AS `id_articulo`,`articulo`.`nombre` AS `articulo`,`marca`.`nombre` AS `marca`,`talle`.`nombre` AS `talle`,`deposito`.`nombre` AS `deposito`,`stock`.`cantidad` AS `cantidad` from ((((`stock` join `articulo` on(`stock`.`id_articulo` = `articulo`.`id`)) join `marca` on(`articulo`.`id_marca` = `marca`.`id`)) join `talle` on(`articulo`.`id_talle` = `talle`.`id`)) join `deposito` on(`stock`.`id_deposito` = `deposito`.`id`)) */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
