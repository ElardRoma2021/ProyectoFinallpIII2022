-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bd_petshop
CREATE DATABASE IF NOT EXISTS `bd_petshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bd_petshop`;

-- Volcando estructura para tabla bd_petshop.tb_boleta
CREATE TABLE IF NOT EXISTS `tb_boleta` (
  `id_bol` int(11) NOT NULL AUTO_INCREMENT,
  `id_cli` int(11) DEFAULT NULL,
  `id_esp` int(11) DEFAULT NULL,
  `fecha_bol` varchar(11) DEFAULT NULL,
  `total_bol` double DEFAULT NULL,
  `estado_bol` varchar(50) DEFAULT NULL,
  `id_est` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_bol`),
  KEY `FK_tb_boleta_tb_cliente` (`id_cli`),
  KEY `FK_tb_boleta_tb_estado` (`id_est`),
  KEY `FK_tb_boleta_tb_estado_pago` (`id_esp`),
  CONSTRAINT `FK_tb_boleta_tb_cliente` FOREIGN KEY (`id_cli`) REFERENCES `tb_cliente` (`id_cli`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_boleta_tb_estado` FOREIGN KEY (`id_est`) REFERENCES `tb_estado` (`id_est`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_boleta_tb_estado_pago` FOREIGN KEY (`id_esp`) REFERENCES `tb_estado_pago` (`id_esp`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_boleta: ~2 rows (aproximadamente)
INSERT INTO `tb_boleta` (`id_bol`, `id_cli`, `id_esp`, `fecha_bol`, `total_bol`, `estado_bol`, `id_est`) VALUES
	(8, 4, 8, '2022-07-04', 430, 'Cancelado - En Proceso de Envio', NULL),
	(9, 4, 9, '2022-07-04', 280, 'Cancelado - En Proceso de Envio', NULL);

-- Volcando estructura para tabla bd_petshop.tb_boleta_detalle
CREATE TABLE IF NOT EXISTS `tb_boleta_detalle` (
  `id_bod` int(11) NOT NULL AUTO_INCREMENT,
  `id_pro` int(11) DEFAULT NULL,
  `id_bol` int(11) DEFAULT NULL,
  `cantidad_bod` int(11) DEFAULT NULL,
  `subtotal_bod` double DEFAULT NULL,
  PRIMARY KEY (`id_bod`),
  KEY `FK_tb_boleta_detalle_tb_boleta` (`id_bol`),
  KEY `FK_tb_boleta_detalle_tb_producto` (`id_pro`),
  CONSTRAINT `FK_tb_boleta_detalle_tb_boleta` FOREIGN KEY (`id_bol`) REFERENCES `tb_boleta` (`id_bol`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK_tb_boleta_detalle_tb_producto` FOREIGN KEY (`id_pro`) REFERENCES `tb_producto` (`id_pro`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_boleta_detalle: ~7 rows (aproximadamente)
INSERT INTO `tb_boleta_detalle` (`id_bod`, `id_pro`, `id_bol`, `cantidad_bod`, `subtotal_bod`) VALUES
	(13, 1, 8, 2, 100),
	(14, 2, 8, 2, 30),
	(15, 3, 8, 2, 50),
	(16, 5, 8, 1, 10),
	(17, 4, 8, 3, 20),
	(18, 1, 9, 2, 100),
	(19, 2, 9, 1, 30),
	(20, 3, 9, 1, 50);

-- Volcando estructura para tabla bd_petshop.tb_cliente
CREATE TABLE IF NOT EXISTS `tb_cliente` (
  `id_cli` int(11) NOT NULL AUTO_INCREMENT,
  `dni_cli` varchar(8) DEFAULT NULL,
  `nombres_cli` varchar(50) DEFAULT NULL,
  `apellidos_cli` varchar(50) DEFAULT NULL,
  `email_cli` varchar(50) DEFAULT NULL,
  `clave_cli` varchar(50) DEFAULT NULL,
  `telefono_ci` varchar(20) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_cli`),
  KEY `FK_tb_cliente_tb_usuario` (`id_usu`),
  CONSTRAINT `FK_tb_cliente_tb_usuario` FOREIGN KEY (`id_usu`) REFERENCES `tb_usuario` (`id_usu`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_cliente: ~4 rows (aproximadamente)
INSERT INTO `tb_cliente` (`id_cli`, `dni_cli`, `nombres_cli`, `apellidos_cli`, `email_cli`, `clave_cli`, `telefono_ci`, `id_usu`) VALUES
	(2, '70323854', 'daniel', 'gonzalez', 'mockingblur@gmail.com', NULL, '988030558', 2),
	(3, '123456', 'juan', 'benis', 'correo@mail.com', '12345', '12345', 3),
	(4, '74527943', 'jesus', 'alto bolognesi', 'jesus@gmail.com', '12345', NULL, NULL),
	(5, '12345678', 'luis', 'pocollay', 'luis@gmail.com', '12345', NULL, NULL);

-- Volcando estructura para tabla bd_petshop.tb_compra
CREATE TABLE IF NOT EXISTS `tb_compra` (
  `id_com` int(11) NOT NULL AUTO_INCREMENT,
  `id_prv` int(11) DEFAULT NULL,
  `serie_com` varchar(50) NOT NULL DEFAULT '0',
  `fecha_com` varchar(11) DEFAULT NULL,
  `total_com` double DEFAULT NULL,
  `estado_com` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_com`),
  KEY `FK_tb_compra_tb_proveedor` (`id_prv`),
  CONSTRAINT `FK_tb_compra_tb_proveedor` FOREIGN KEY (`id_prv`) REFERENCES `tb_proveedor` (`id_prv`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_compra: ~3 rows (aproximadamente)
INSERT INTO `tb_compra` (`id_com`, `id_prv`, `serie_com`, `fecha_com`, `total_com`, `estado_com`) VALUES
	(1, 1, '1', '2022-07-04', 200, '1'),
	(2, 1, '2', '2022-07-04', 90, '1'),
	(3, 1, '3', '2022-07-04', 40, '1'),
	(4, 1, '4', '2022-07-04', 80, '1');

-- Volcando estructura para tabla bd_petshop.tb_compra_detalle
CREATE TABLE IF NOT EXISTS `tb_compra_detalle` (
  `id_cod` int(11) NOT NULL AUTO_INCREMENT,
  `id_pro` int(11) DEFAULT NULL,
  `id_com` int(11) DEFAULT NULL,
  `cantidad_cod` int(11) DEFAULT NULL,
  `subtotal_cod` double DEFAULT NULL,
  PRIMARY KEY (`id_cod`),
  KEY `FK__tb_producto` (`id_pro`),
  KEY `FK__tb_compra` (`id_com`),
  CONSTRAINT `FK__tb_compra` FOREIGN KEY (`id_com`) REFERENCES `tb_compra` (`id_com`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `FK__tb_producto` FOREIGN KEY (`id_pro`) REFERENCES `tb_producto` (`id_pro`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_compra_detalle: ~3 rows (aproximadamente)
INSERT INTO `tb_compra_detalle` (`id_cod`, `id_pro`, `id_com`, `cantidad_cod`, `subtotal_cod`) VALUES
	(7, 1, 1, 2, 200),
	(8, 2, 2, 3, 90),
	(9, 4, 3, 2, 40),
	(10, 4, 4, 4, 80);

-- Volcando estructura para tabla bd_petshop.tb_empleado
CREATE TABLE IF NOT EXISTS `tb_empleado` (
  `dni_emp` varchar(50) NOT NULL,
  `nombre_emp` varchar(50) DEFAULT NULL,
  `apellido_emp` varchar(50) DEFAULT NULL,
  `direccion_emp` varchar(50) DEFAULT NULL,
  `telefono_emp` varchar(50) DEFAULT NULL,
  `email_emp` varchar(100) DEFAULT NULL,
  `clave_emp` varchar(50) DEFAULT NULL,
  `cargo_emp` varchar(100) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  PRIMARY KEY (`dni_emp`) USING BTREE,
  KEY `FK_tb_administrador_tb_usuario` (`id_usu`),
  CONSTRAINT `FK_tb_administrador_tb_usuario` FOREIGN KEY (`id_usu`) REFERENCES `tb_usuario` (`id_usu`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_empleado: ~1 rows (aproximadamente)
INSERT INTO `tb_empleado` (`dni_emp`, `nombre_emp`, `apellido_emp`, `direccion_emp`, `telefono_emp`, `email_emp`, `clave_emp`, `cargo_emp`, `id_usu`) VALUES
	('1234567', 'daniel', 'caxi', 'alto bolognesi', '123456789', 'daniel@gmail.com', '12345', 'empleado', NULL);

-- Volcando estructura para tabla bd_petshop.tb_estado
CREATE TABLE IF NOT EXISTS `tb_estado` (
  `id_est` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_est` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_est`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_estado: ~0 rows (aproximadamente)

-- Volcando estructura para tabla bd_petshop.tb_estado_pago
CREATE TABLE IF NOT EXISTS `tb_estado_pago` (
  `id_esp` int(11) NOT NULL AUTO_INCREMENT,
  `monto_esp` double DEFAULT 0,
  `descripcion_esp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_esp`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_estado_pago: ~9 rows (aproximadamente)
INSERT INTO `tb_estado_pago` (`id_esp`, `monto_esp`, `descripcion_esp`) VALUES
	(1, 200, NULL),
	(2, 800, NULL),
	(3, 260, NULL),
	(4, 120, NULL),
	(5, 100, NULL),
	(6, 350, NULL),
	(7, 470, NULL),
	(8, 430, NULL),
	(9, 280, NULL);

-- Volcando estructura para tabla bd_petshop.tb_producto
CREATE TABLE IF NOT EXISTS `tb_producto` (
  `id_pro` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_pro` varchar(250) DEFAULT NULL,
  `imagen_pro` varchar(250) DEFAULT NULL,
  `descripcion_pro` varchar(250) DEFAULT NULL,
  `precio_pro` double DEFAULT NULL,
  `stock_pro` int(11) DEFAULT NULL,
  `codigo_pro` varchar(100) DEFAULT NULL,
  `id_tip` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pro`),
  KEY `FK_tb_producto_tb_tipo_producto` (`id_tip`),
  CONSTRAINT `FK_tb_producto_tb_tipo_producto` FOREIGN KEY (`id_tip`) REFERENCES `tb_tipo_producto` (`id_tip`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_producto: ~6 rows (aproximadamente)
INSERT INTO `tb_producto` (`id_pro`, `nombre_pro`, `imagen_pro`, `descripcion_pro`, `precio_pro`, `stock_pro`, `codigo_pro`, `id_tip`) VALUES
	(1, 'Arbol trepador', 'http://localhost:8080/imagenes/img-gatos/arbol-trepador.jpg', 'Arbol trepador para gatos', 100, 7, NULL, NULL),
	(2, 'Arnes para gato', 'http://localhost:8080/imagenes/img-gatos/arnes.jpg', 'Arnes para sacar a pasear al gato', 30, 15, NULL, NULL),
	(3, 'Juguete para gato', 'http://localhost:8080/imagenes/img-gatos/juguetes-5.jpg', 'Juguete todo en uno para gatos', 50, 15, NULL, NULL),
	(4, 'Ardilla con Sonido', 'http://localhost:8080/imagenes/img-perros/ardilla-con-sonido.jfif', 'Juguete para que el perro muerda sin parar', 20, 20, NULL, NULL),
	(5, 'Pelota par aperro', 'http://localhost:8080/imagenes/img-perros/pelota-resistente.jfif', 'Pelota para jugar con el perro', 10, 32, NULL, NULL);

-- Volcando estructura para tabla bd_petshop.tb_proveedor
CREATE TABLE IF NOT EXISTS `tb_proveedor` (
  `id_prv` int(11) NOT NULL,
  `documento_prv` varchar(50) DEFAULT NULL,
  `razon_social_prv` varchar(50) DEFAULT NULL,
  `email_prv` varchar(50) DEFAULT NULL,
  `telefono_prv` varchar(50) DEFAULT NULL,
  `direccion_prv` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_prv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_proveedor: ~1 rows (aproximadamente)
INSERT INTO `tb_proveedor` (`id_prv`, `documento_prv`, `razon_social_prv`, `email_prv`, `telefono_prv`, `direccion_prv`) VALUES
	(1, 'documento32', 'inc', 'inc@gmail.com', '123654987', 'tacna');

-- Volcando estructura para tabla bd_petshop.tb_rol
CREATE TABLE IF NOT EXISTS `tb_rol` (
  `id_rol` int(11) NOT NULL,
  `descripcion_rol` varchar(50) DEFAULT NULL,
  `estado_rol` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_rol: ~2 rows (aproximadamente)
INSERT INTO `tb_rol` (`id_rol`, `descripcion_rol`, `estado_rol`) VALUES
	(1, 'Administrador', b'1'),
	(2, 'Cliente', b'1');

-- Volcando estructura para tabla bd_petshop.tb_tipo_producto
CREATE TABLE IF NOT EXISTS `tb_tipo_producto` (
  `id_tip` int(11) NOT NULL,
  `descripcion_tip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_tipo_producto: ~0 rows (aproximadamente)

-- Volcando estructura para tabla bd_petshop.tb_usuario
CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id_usu` int(11) NOT NULL AUTO_INCREMENT,
  `id_rol` int(11) DEFAULT 0,
  `usuario_usu` varchar(50) DEFAULT NULL,
  `clave_usu` varchar(250) DEFAULT NULL,
  `estado_usu` bit(1) DEFAULT bit_count(1),
  PRIMARY KEY (`id_usu`),
  KEY `FK_tb_usuario_tb_rol` (`id_rol`),
  CONSTRAINT `FK_tb_usuario_tb_rol` FOREIGN KEY (`id_rol`) REFERENCES `tb_rol` (`id_rol`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bd_petshop.tb_usuario: ~3 rows (aproximadamente)
INSERT INTO `tb_usuario` (`id_usu`, `id_rol`, `usuario_usu`, `clave_usu`, `estado_usu`) VALUES
	(1, 1, 'admin', 'admin', b'1'),
	(2, 2, 'daniel', '1234', b'1'),
	(3, 2, 'juan', '1234', b'1');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
