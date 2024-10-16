-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS `ventas_php` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE `ventas_php`;

-- Creación de la tabla `productos`
CREATE TABLE IF NOT EXISTS `productos` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `codigo` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `compra` DECIMAL(8,2) NOT NULL,
  `venta` DECIMAL(8,2) NOT NULL,
  `existencia` INT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Creación de la tabla `clientes`
CREATE TABLE IF NOT EXISTS `clientes` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NOT NULL,
  `telefono` VARCHAR(25) NOT NULL,
  `direccion` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Creación de la tabla `usuarios`
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(50) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `telefono` VARCHAR(25) NOT NULL,
  `direccion` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserción de datos en la tabla `usuarios`
INSERT INTO `usuarios` (`usuario`, `nombre`, `telefono`, `direccion`, `password`) VALUES
('paco', 'PacoHunter', '6667771234', 'Nowhere', '$2y$10$6zeiv5cq4/HCjWBH5X/Fd.yxKfDaWa5sJaYfW302n./awI/lQcH0i');

-- Creación de la tabla `ventas`
CREATE TABLE IF NOT EXISTS `ventas` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `fecha` DATETIME NOT NULL,
  `total` DECIMAL(9,2) NOT NULL,
  `idUsuario` BIGINT NOT NULL,
  `idCliente` BIGINT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Creación de la tabla `productos_ventas`
CREATE TABLE IF NOT EXISTS `productos_ventas` (
  `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cantidad` INT NOT NULL,
  `precio` DECIMAL(8,2) NOT NULL,
  `idProducto` BIGINT NOT NULL,
  `idVenta` BIGINT NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
