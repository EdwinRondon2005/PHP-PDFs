-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2023 a las 14:14:17
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pdf_edwin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `electrodomestico`
--

CREATE TABLE `electrodomesticos` (
  `codigo` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `proveedor` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `electrodomestico`
--

INSERT INTO `electrodomesticos` (`codigo`, `nombre`, `precio`, `descripcion`, `proveedor`) VALUES
(1, 'Televisor Samsung 55\"', '799.99', 'Televisor de alta definición con pantalla de 55 pulgadas', 'Samsung'),
(2, 'Lavadora LG', '499.99', 'Lavadora de carga frontal con capacidad de 8 kg', 'LG'),
(3, 'Refrigerador Whirlpool', '899.99', 'Refrigerador de dos puertas con capacidad de 25 pies cúbicos', 'Whirlpool'),
(4, 'Horno eléctrico Black & Decker', '149.99', 'Horno eléctrico con capacidad de 6 rebanadas de pan', 'Black & Decker'),
(5, 'Aspiradora Shark', '199.99', 'Aspiradora sin bolsa con tecnología Anti-Allergen Complete Seal', 'Shark'),
(6, 'Licuadora Oster', '79.99', 'Licuadora con vaso de vidrio y cuchillas de acero inoxidable', 'Oster'),
(7, 'Cafetera Keurig', '129.99', 'Cafetera de cápsulas con pantalla táctil y función de preparación programada', 'Keurig'),
(8, 'Batidora KitchenAid', '199.99', 'Batidora de pie con tazón de acero inoxidable y 10 velocidades', 'KitchenAid'),
(9, 'Tostador Hamilton Beach', '49.99', 'Tostador de 4 rebanadas con funciones de descongelado y recalentado', 'Hamilton Beach'),
(10, 'Freidora de aire Philips', '149.99', 'Freidora de aire con capacidad de 2.75 cuartos de galón y tecnología Rapid Air', 'Philips'),
(11, 'Plancha Rowenta', '79.99', 'Plancha de vapor con suela de acero inoxidable y función de apagado automático', 'Rowenta'),
(12, 'Secadora Samsung', '699.99', 'Secadora a gas con capacidad de 7.4 pies cúbicos y sensor de humedad', 'Samsung'),
(13, 'Lavavajillas Bosch', '899.99', 'Lavavajillas con capacidad de 16 servicios y tecnología de secado con Zeolita', 'Bosch'),
(14, 'Microondas Sharp', '99.99', 'Microondas de 900 vatios con capacidad de 0.9 pies cúbicos y función de descongelado automático', 'Sharp'),
(15, 'Licuadora Ninja', '149.99', 'Licuadora profesional con motor de 1000 vatios y tecnología Total Crushing', 'Ninja'),
(16, 'Cocina de gas Whirlpool', '799.99', 'Cocina de gas con 5 quemadores y horno con capacidad de 5.8 pies cúbicos', 'Whirlpool'),
(17, 'Dispensador de agua Primo', '149.99', 'Dispensador de agua fría y caliente con depósito de 3 galones', 'Primo'),
(18, 'Hervidor eléctrico Cuisinart', '79.99', 'Hervidor eléctrico con capacidad de 1.7 litros y ajuste de temperatura', 'Cuisinart'),
(19, 'Enfriador de vino Haier', '199.99', 'Enfriador de vino con capacidad de 16 botellas y ajuste de temperatura', 'Haier'),
(20, 'Máquina de hacer helados Cuisinart', '299.99', 'Máquina de hacer helados con capacidad de 2 cuartos de galón y función de preparación rápida', 'Cuisinart');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `electrodomestico`
--
ALTER TABLE `electrodomesticos`
  ADD PRIMARY KEY (`codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
