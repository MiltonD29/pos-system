-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2018 a las 03:22:50
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pos-omark`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `fecha`) VALUES
(1, 'Serigrafía', '2018-10-25 06:29:29'),
(2, 'Calendarios', '2018-10-25 06:30:10'),
(3, 'Sellos', '2018-10-25 06:30:04'),
(4, 'Volantes', '2018-10-25 06:29:56'),
(5, 'Tarjetas de Presentación', '2018-10-25 06:29:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `documento` int(11) NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `compras` int(11) NOT NULL,
  `ultima_compra` datetime NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `documento`, `email`, `telefono`, `direccion`, `fecha_nacimiento`, `compras`, `ultima_compra`, `fecha`) VALUES
(2, 'Ivan Flores', 1202, 'ivan@example.com', '(187) 654-3211', 'Calle Probando 123, Springfield', '1991-11-12', 6, '0000-00-00 00:00:00', '2018-11-23 07:34:29'),
(5, 'Prueba', 9876, 'prueba@example.com', '(987) 123-4567', 'Enrique Segoviano 1100', '1980-02-20', 1, '0000-00-00 00:00:00', '2018-11-23 07:46:28'),
(6, 'Tecnoval', 123, 'tecnoval@example.com', '(123) 456-7890', 'Caracol 100', '2000-03-20', 9, '2018-11-23 20:00:25', '2018-11-23 19:00:25'),
(7, 'Marco Gómez', 98765, 'marco@example.com', '(987) 654-3211', 'Aramberri 1221', '1960-03-12', 6, '2018-11-23 09:23:09', '2018-11-23 08:23:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `imagen` text COLLATE utf8_spanish_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio_compra` float NOT NULL,
  `precio_venta` float NOT NULL,
  `ventas` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `codigo`, `descripcion`, `imagen`, `stock`, `precio_compra`, `precio_venta`, `ventas`, `fecha`) VALUES
(2, 1, '102', 'Playera personalizada', 'vistas/img/productos/102/713.png', 0, 200, 280, 0, '2018-11-16 07:44:34'),
(3, 1, '103', 'Pluma personalizada', 'vistas/img/productos/default/product_default.png', 6, 10, 14, 4, '2018-11-23 07:37:58'),
(4, 2, '201', 'Calendario de bolsillo', 'vistas/img/productos/default/product_default.png', 5, 20, 28, 6, '2018-11-23 18:53:14'),
(5, 2, '202', 'Calendario de pared', 'vistas/img/productos/default/product_default.png', 19, 100, 140, 1, '2018-11-23 19:00:25'),
(6, 2, '203', 'Calendario de escritorio', 'vistas/img/productos/default/product_default.png', 20, 70, 98, 0, '2018-11-04 01:49:33'),
(7, 3, '301', 'Sello de goma', 'vistas/img/productos/default/product_default.png', 16, 100, 140, 4, '2018-11-23 08:23:09'),
(8, 3, '302', 'Sello de madera', 'vistas/img/productos/default/product_default.png', 19, 50, 70, 1, '2018-11-23 07:34:29'),
(9, 3, '303', 'Sello automatico', '', 19, 200, 280, 1, '2018-11-23 07:34:29'),
(10, 4, '401', 'Millar de volante media carta', '', 20, 380, 532, 0, '2018-10-25 05:52:21'),
(11, 4, '402', 'Millar de volante carta', '', 20, 400, 560, 0, '2018-10-25 05:52:21'),
(12, 4, '403', 'Millar de volante media carta a color', '', 20, 400, 560, 0, '2018-10-25 05:52:21'),
(13, 5, '501', 'Millar Tarjetas de presentacion un lado', '', 20, 350, 490, 0, '2018-10-25 05:52:21'),
(14, 5, '502', 'Millar Tarjetas de presentacion dos lados', '', 20, 370, 518, 0, '2018-10-25 05:52:21'),
(15, 5, '503', 'Millar Tarjetas de presentacion plastificada', '', 20, 380, 532, 0, '2018-10-25 05:52:21'),
(16, 4, '404', 'Millar de volantes media carta B y N', 'vistas/img/productos/default/product_default.png', 20, 300, 420, 0, '2018-11-04 18:19:16'),
(17, 1, '104', 'Sudadera personalizada', 'vistas/img/productos/default/product_default.png', 3, 200, 280, 0, '2018-11-04 18:27:55'),
(18, 1, '105', 'Termo personalizado', 'vistas/img/productos/default/product_default.png', 5, 79.99, 111.986, 0, '2018-11-04 18:28:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `rfc` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `cuenta_bancaria` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `nombre`, `rfc`, `direccion`, `telefono`, `cuenta_bancaria`) VALUES
(2, 'YAZBEK', 'YAZ123456BEK', 'Calle Prueba 300', '121212121212', '000001'),
(3, 'GILDAN', 'GILD123456AN7', 'Centro de Monterrey', '(123) 456-7899', '987789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `usuario` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `perfil` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `estado` int(11) NOT NULL,
  `ultimo_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `perfil`, `foto`, `estado`, `ultimo_login`, `fecha`) VALUES
(13, 'Zaida Santoyo', 'zaida', '$2a$07$asxx54ahjppf45sd87a5au7b6MANruMUSk6d.hnHHh4O6I6pwPGyi', 'Administrador', 'vistas/img/usuarios/zaida/875.jpg', 1, '2018-11-24 00:38:12', '2018-11-24 00:38:12'),
(15, 'Administrador', 'admin', '$2a$07$asxx54ahjppf45sd87a5auXBm1Vr2M1NV5t/zNQtGHGpS5fFirrbG', 'Administrador', '', 1, '2018-11-24 00:38:38', '2018-11-24 00:38:38');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vendedor` int(11) NOT NULL,
  `productos` text COLLATE utf8_spanish_ci NOT NULL,
  `impuesto` float NOT NULL,
  `neto` float NOT NULL,
  `total` float NOT NULL,
  `metodo_pago` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `codigo`, `id_cliente`, `id_vendedor`, `productos`, `impuesto`, `neto`, `total`, `metodo_pago`, `fecha`) VALUES
(1, 10001, 6, 14, '[{\"id\":\"3\",\"descripcion\":\"Pluma personalizada\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"14\",\"total\":\"14\"},{\"id\":\"4\",\"descripcion\":\"Calendario de bolsillo\",\"cantidad\":\"1\",\"stock\":\"10\",\"precio\":\"28\",\"total\":\"28\"}]', 6.72, 42, 48.72, 'TC-12345', '2018-11-23 07:15:50'),
(2, 10002, 2, 13, '[{\"id\":\"7\",\"descripcion\":\"Sello de goma\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"140\",\"total\":\"140\"},{\"id\":\"8\",\"descripcion\":\"Sello de madera\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"70\",\"total\":\"70\"},{\"id\":\"9\",\"descripcion\":\"Sello automatico\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"280\",\"total\":\"280\"}]', 78.4, 490, 568.4, 'TD-98765', '2018-11-23 07:34:29'),
(3, 10003, 7, 14, '[{\"id\":\"3\",\"descripcion\":\"Pluma personalizada\",\"cantidad\":\"3\",\"stock\":\"6\",\"precio\":\"14\",\"total\":\"42\"}]', 6.72, 42, 48.72, 'Efectivo', '2018-11-23 08:04:19'),
(4, 10004, 5, 14, '[{\"id\":\"4\",\"descripcion\":\"Calendario de bolsillo\",\"cantidad\":\"1\",\"stock\":\"9\",\"precio\":\"28\",\"total\":\"28\"}]', 4.48, 28, 32.48, 'TC-6573', '2018-11-23 08:04:25'),
(5, 10005, 7, 14, '[{\"id\":\"7\",\"descripcion\":\"Sello de goma\",\"cantidad\":\"3\",\"stock\":\"16\",\"precio\":\"140\",\"total\":\"420\"}]', 67.2, 420, 487.2, 'TD-983789', '2018-11-23 08:23:09'),
(6, 10006, 6, 14, '[{\"id\":\"5\",\"descripcion\":\"Calendario de pared\",\"cantidad\":\"1\",\"stock\":\"19\",\"precio\":\"140\",\"total\":\"140\"}]', 22.4, 140, 162.4, 'Efectivo', '2018-11-23 19:00:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
