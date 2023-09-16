-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_springboot_cloud
-- ------------------------------------------------------
-- Server version	8.0.33
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping routines for database 'db_springboot_cloud'
--
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_actualizarProducto`(
IN idprod				 int,
IN nombreproducto_in     VARCHAR(45),
IN precio_in             VARCHAR(20),
IN fechacreacion_in      datetime,
IN estado_in             VARCHAR(10),
IN nroposicion_in        VARCHAR(45), 
IN cantidaddisponible_in int,
IN imagenproducto_in  	 mediumblob)
BEGIN
	update productos set 
    nombreproducto = nombreproducto_in,
    precio = precio_in,
    fechacreacion = fechacreacion_in,
    estado = estado_in, 
    nroposicion = nroposicion_in,
    cantidaddisponible = cantidaddisponible_in,
    imagenproducto = imagenproducto_in
    where idproductos = idprod;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarProducto`(
IN idproductosin int
)
BEGIN
	select idproductos, nombreproducto, precio, fechacreacion, estado, nroposicion, cantidaddisponible from productos WHERE idproductos = idproductosin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_consultarVentas`(
IN fecventain varchar(10)
)
BEGIN
  DECLARE start_date datetime;
  DECLARE end_date datetime;
  
  SET start_date = (SELECT CAST( CONCAT(fecventain, ' 00:00:00') AS DATE));
  SET end_date = (SELECT STR_TO_DATE(  CONCAT(fecventain ,'23:59:59') ,'%Y-%m-%d %H:%i:%s')) ;
   
	select 
    idcorrelativo,
    idventa,
	fechaventa,
	secuencia,
	nroboleta,
	totalarticulos,
	subtotalventa,
	iva,
	totalimporte,
	tipopago,
	comisiontbk,
	comunicacionpos,
	estadotransbank,
	trazastattransbk, 
	longmsgtransbank
  from ventas WHERE fechaventa between start_date and end_date; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_estadisticaVentasMes`(
	IN fecventain varchar(10)
)
BEGIN

  DECLARE dfecventain date;
  SET dfecventain = (SELECT STR_TO_DATE(fecventain, '%Y-%m-%d'));

SELECT  CONCAT('Día ' ,DAY(fechaventa)) as name,  sum(totalimporte) as value
FROM ventas where YEAR(fechaventa) = YEAR(dfecventain)
	and  MONTH(fechaventa) = MONTH(dfecventain)
GROUP BY YEAR(fechaventa), MONTH(fechaventa), DAY(fechaventa);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertarDetalleVenta`(
  IN `idventa_in` bigint unsigned,
  IN `nombreproducto_in` VARCHAR(45),
  IN `idproducto_in` VARCHAR(45),
  IN `cantidad_in` int,
  IN `preciosubtotal_in` int
)
BEGIN
INSERT INTO `db_springboot_cloud`.`detalleventas`(
  `idventa`,
  `nombreproducto`,
  `idproducto`,
  `cantidad`,
  `preciosubtotal`
)VALUES(
  idventa_in,
  nombreproducto_in,
  idproducto_in,
  cantidad_in,
  preciosubtotal_in
);
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertarProducto`(
IN nombreproducto     VARCHAR(45),
IN precio             VARCHAR(20),
IN fechacreacion      datetime,
IN estado            VARCHAR(10),
IN nroposicion        VARCHAR(45), 
IN cantidaddisponible int,
IN imagenproducto  mediumblob)
BEGIN
INSERT INTO `db_springboot_cloud`.`productos`
(`nombreproducto`,
`precio`,
`fechacreacion`,
`estado`,
`nroposicion`,
`cantidaddisponible`,
`imagenproducto`)
VALUES
(nombreproducto,
precio,
fechacreacion,
estado,
nroposicion,
cantidaddisponible,
imagenproducto);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertarVenta`(
 IN `idventa` bigint unsigned,
 IN `fechaventa_in` timestamp,
 IN `secuencia_in` varchar(45),
 IN `nroboleta_in` varchar(45),
 IN `totalarticulos_in` int,
 IN `subtotalventa_in` int,
 IN `iva_in` int,
 IN `totalimporte_in` int,
 IN `tipopago_in` varchar(10),
 IN `comisiontbk_in` int,
 IN `comunicacionpos_in` varchar(45),
 IN `estadotransbank_in` varchar(45),
 IN `trazastattransbk_in` varchar(45), 
 IN `longmsgtransbank_in` varchar(45)
 )
BEGIN

INSERT INTO `db_springboot_cloud`.`ventas`(
  `idventa`,
  `fechaventa`,
  `secuencia`,
  `nroboleta`,
  `totalarticulos`,
  `subtotalventa`,
  `iva` ,
  `totalimporte` ,
  `tipopago`,
  `comisiontbk`,
  `comunicacionpos`,
  `estadotransbank`,
  `trazastattransbk`, 
  `longmsgtransbank`)
VALUES (
  idventa,
  fechaventa_in, 
  secuencia_in,
  nroboleta_in,
  totalarticulos_in,
  subtotalventa_in,
  iva_in,
  totalimporte_in,
  tipopago_in,
  comisiontbk_in,
  comunicacionpos_in,
  estadotransbank_in,
  trazastattransbk_in,
  longmsgtransbank_in
);
commit;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listarProductos`()
BEGIN
	select idproductos, nombreproducto, precio, fechacreacion, estado, nroposicion, cantidaddisponible  from productos;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listarVentas`()
BEGIN
	select 
  idcorrelativo,
  idventa,
  fechaventa,
  secuencia,
  nroboleta,
  totalarticulos,
  subtotalventa,
  iva,
  totalimporte,
  tipopago,
  comisiontbk,
  comunicacionpos,
  estadotransbank,
  trazastattransbk, 
  longmsgtransbank
   from ventas;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-10 15:19:28
