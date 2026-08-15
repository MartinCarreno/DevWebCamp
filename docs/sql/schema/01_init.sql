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
