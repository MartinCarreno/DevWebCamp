--hola esta es el inicio de la db: 

--Crear la DB en caso de que no existe
CREATE DATABASE IF NOT EXISTS `devwebcamp`
CHARACTER SET utf8 
COLLATE utf8_general_ci;

USE `devwebcamp`;

--SOLO PARA DEV o DESARROLLO EN LOCAL
DROP TABLE IF EXISTS `usuarios`;

-- Tabla usuarios

CREATE TABLE `usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(40) DEFAULT NULL,
  `apellido` VARCHAR(40) DEFAULT NULL,
  `email` VARCHAR(40) NOT NULL,
  `password` VARCHAR(60) NOT NULL,
  `confirmado` TINYINT(1) DEFAULT 0,
  `token` VARCHAR(13) DEFAULT NULL,
  `admin` TINYINT(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--tabla ponenetes
CREATE TABLE `ponentes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(40) DEFAULT NULL,
  `apellido` varchar(40) DEFAULT NULL,
  `ciudad` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `pais` varchar(20) DEFAULT NULL,
  `imagen` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `tags` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `redes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
