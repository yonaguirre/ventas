-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 27-14-2020 a las 22:55:22
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ventas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` double NOT NULL,
  PRIMARY KEY (`cartid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(30) NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`categoryid`, `category_name`) VALUES
(1, 'Apple'),
(2, 'Android'),
(3, 'Planes ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `userid` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`userid`, `customer_name`, `address`, `contact`) VALUES
(2, 'jesus', 'Lima peru, Los olivos', '944219618'),
(10, 'lucas', 'comas', '62535463'),
(12, 'mosombite', 'juan pablo II', '099443930'),
(13, 'carlos', 'Puente pieda - lima', '7849383748'),
(14, 'javier', 'callao - lima', '0272721');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventory`
--

CREATE TABLE IF NOT EXISTS `inventory` (
  `inventoryid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `inventory_date` datetime NOT NULL,
  PRIMARY KEY (`inventoryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Volcado de datos para la tabla `inventory`
--

INSERT INTO `inventory` (`inventoryid`, `userid`, `action`, `productid`, `quantity`, `inventory_date`) VALUES
(1, 2, 'Purchase', 4, 10, '2019-09-18 09:32:01'),
(2, 2, 'Purchase', 20, 10, '2019-09-18 09:32:01'),
(3, 2, 'Purchase', 1, 99, '2019-09-18 09:32:01'),
(4, 2, 'Purchase', 2, 20, '2019-09-18 09:32:01'),
(5, 2, 'Purchase', 2, 10, '2019-09-18 09:34:29'),
(6, 2, 'Purchase', 2, 10, '2019-09-18 11:09:21'),
(7, 2, 'Purchase', 3, 12, '2019-09-18 11:09:22'),
(8, 2, 'Purchase', 4, 8, '2019-09-18 11:09:22'),
(9, 1, 'Add Product', 27, 10, '2019-09-18 13:59:25'),
(10, 1, 'Update quantity', 27, 20, '2019-09-18 14:04:32'),
(11, 1, 'Add Product', 28, 500, '2019-11-27 12:56:52'),
(12, 1, 'Add Product', 29, 500, '2019-11-27 12:57:16'),
(13, 1, 'Add Product', 30, 500, '2019-11-27 12:57:38'),
(14, 1, 'Add Product', 31, 30000, '2019-11-27 12:58:10'),
(15, 10, 'Purchase', 31, 1, '2019-11-27 13:02:32'),
(16, 10, 'Purchase', 30, 1, '2019-11-27 13:04:30'),
(17, 14, 'Purchase', 28, 1, '2019-11-27 17:34:22'),
(18, 14, 'Purchase', 29, 1, '2019-11-27 17:35:12'),
(19, 14, 'Purchase', 29, 1, '2019-11-27 17:35:37'),
(20, 14, 'Purchase', 31, 12, '2019-11-27 17:36:09'),
(21, 12, 'Purchase', 30, 3, '2019-11-27 17:36:58'),
(22, 12, 'Purchase', 28, 5, '2019-11-27 17:37:29'),
(23, 12, 'Purchase', 28, 2, '2019-11-27 17:37:50'),
(24, 12, 'Purchase', 31, 15, '2019-11-27 17:38:12'),
(25, 13, 'Purchase', 30, 4, '2019-11-27 17:40:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryid` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `product_price` double NOT NULL,
  `product_qty` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `supplierid` int(11) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Volcado de datos para la tabla `product`
--

INSERT INTO `product` (`productid`, `categoryid`, `product_name`, `product_price`, `product_qty`, `photo`, `supplierid`) VALUES
(28, 1, 'Iphone X', 1900, 492, 'upload/producto1_1511805412.png', 4),
(29, 2, 'LG  G6', 1500, 498, 'upload/producto2_1511805436.png', 4),
(30, 2, 'Samsung 8', 1800, 492, 'upload/producto3_1511805458.png', 4),
(31, 3, 'Plan Master ', 49, 29972, 'upload/producto4_1511805490.png', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `provedor`
--

CREATE TABLE IF NOT EXISTS `provedor` (
  `userid` int(11) NOT NULL,
  `company_name` varchar(50) NOT NULL,
  `company_address` varchar(150) NOT NULL,
  `contact` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `provedor`
--

INSERT INTO `provedor` (`userid`, `company_name`, `company_address`, `contact`) VALUES
(4, 'Ios.sac', 'EEUU, Texas', '1-800-WWW-DELL'),
(11, 'movilephone', 'CostaRica, Los olivos', '4736722'),
(15, 'pedro', 'Los olivos - Nicaragua c-88', '9889463521'),
(16, 'coporacion goodmoviles.SAC', 'Los olivos - lima Nic c-88', '9889463521');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sales_detail`
--

CREATE TABLE IF NOT EXISTS `sales_detail` (
  `sales_detailid` int(11) NOT NULL AUTO_INCREMENT,
  `salesid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `sales_qty` double NOT NULL,
  PRIMARY KEY (`sales_detailid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Volcado de datos para la tabla `sales_detail`
--

INSERT INTO `sales_detail` (`sales_detailid`, `salesid`, `productid`, `sales_qty`) VALUES
(1, 2, 1, 12),
(2, 2, 2, 10),
(3, 3, 3, 11),
(4, 4, 2, 50),
(5, 4, 1, 106),
(6, 4, 5, 1000),
(7, 5, 2, 12),
(8, 6, 5, 101),
(9, 7, 1, 10),
(10, 7, 3, 11),
(11, 8, 4, 10),
(12, 8, 20, 10),
(13, 8, 1, 99),
(14, 8, 2, 20),
(15, 9, 2, 10),
(16, 10, 2, 10),
(17, 10, 3, 12),
(18, 10, 4, 8),
(19, 11, 31, 1),
(20, 12, 30, 1),
(21, 13, 28, 1),
(22, 14, 29, 1),
(23, 15, 29, 1),
(24, 16, 31, 12),
(25, 17, 30, 3),
(26, 18, 28, 5),
(27, 19, 28, 2),
(28, 20, 31, 15),
(29, 21, 30, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `access` int(1) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `access`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'jesus', '0d8d5cd06832b29560745fe4e1b941cf', 2),
(4, 'supplier', 'fa3ddb86f38fb6a8284636249f6551aa', 3),
(10, 'lucas', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(11, 'jose', '81dc9bdb52d04dc20036dbd8313ed055', 3),
(12, 'mosombite', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(13, 'carlos', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(14, 'javier', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(15, 'pedro', '81dc9bdb52d04dc20036dbd8313ed055', 3),
(16, 'goodmovil', '81dc9bdb52d04dc20036dbd8313ed055', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE IF NOT EXISTS `ventas` (
  `salesid` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `sales_total` double NOT NULL,
  `sales_date` datetime NOT NULL,
  PRIMARY KEY (`salesid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`salesid`, `userid`, `sales_total`, `sales_date`) VALUES
(1, 2, 34, '2019-09-16 16:23:38'),
(2, 2, 18, '2019-09-16 16:25:28'),
(3, 2, 6, '2019-09-16 16:27:31'),
(4, 2, 1014244, '2019-09-16 16:44:01'),
(5, 2, 9588, '2019-09-18 09:06:29'),
(6, 2, 88779, '2019-09-18 09:08:42'),
(7, 2, 15579, '2019-09-18 09:09:34'),
(8, 2, 112361, '2019-09-18 09:32:00'),
(9, 2, 7990, '2019-09-18 09:34:29'),
(10, 2, 18370, '2019-09-18 11:09:21'),
(11, 10, 49, '2019-11-27 13:02:31'),
(12, 10, 1800, '2019-11-27 13:04:30'),
(13, 14, 1900, '2019-11-27 17:34:22'),
(14, 14, 1500, '2019-11-27 17:35:11'),
(15, 14, 1500, '2019-11-27 17:35:37'),
(16, 14, 588, '2019-11-27 17:36:09'),
(17, 12, 5.4, '2019-11-27 17:36:58'),
(18, 12, 9500, '2019-11-27 17:37:29'),
(19, 12, 3800, '2019-11-27 17:37:49'),
(20, 12, 735, '2019-11-27 17:38:12'),
(21, 13, 7200, '2019-11-27 17:40:57'),
(22, 13, 0, '2019-11-27 17:41:18');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
