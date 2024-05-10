
-- Schema garden_db
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `garden_db` DEFAULT CHARACTER SET utf8 ;
USE `garden_db` ;

-- -----------------------------------------------------
-- Table `garden_db`.`gama_producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`gama_producto` (
  `codigo_gama` INT(11) NOT NULL,
  `gama` VARCHAR(50) NOT NULL,
  `descripcion_texto` TEXT(50) NULL,
  `descripcion_html` TEXT(50) NULL,
  `imagen` VARCHAR(256) NULL,
  PRIMARY KEY (`codigo_gama`));


-- -----------------------------------------------------
-- Table `garden_db`.`dimensiones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`dimensiones` (
  `codigo_dimensiones` VARCHAR(15) NOT NULL,
  `largo` VARCHAR(5) NULL,
  `alto` VARCHAR(5) NULL,
  `ancho` VARCHAR(5) NULL,
  `peso` VARCHAR(5) NULL,
  PRIMARY KEY (`codigo_dimensiones`));


-- -----------------------------------------------------
-- Table `garden_db`.`producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`producto` (
  `codigo_producto` VARCHAR(15) NOT NULL,
  `nombre` VARCHAR(70) NOT NULL,
  `codigo_gama` INT(11) NOT NULL,
  `cantidad_stock` SMALLINT(6) NOT NULL,
  `precio_venta` DECIMAL(15,2) NOT NULL,
  `descripcion` TEXT NULL,
  `codigo_dimensiones` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`codigo_producto`),
  UNIQUE INDEX `codigo_producto_UNIQUE` (`codigo_producto` ASC) VISIBLE,
  INDEX `codigo_dimensiones_idx` (`codigo_dimensiones` ASC) VISIBLE,
  CONSTRAINT `codigo_gama`
    FOREIGN KEY (`codigo_gama`)
    REFERENCES `garden_db`.`gama_producto` (`codigo_gama`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `codigo_dimensiones`
    FOREIGN KEY (`codigo_dimensiones`)
    REFERENCES `garden_db`.`dimensiones` (`codigo_dimensiones`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`proveedor` (
  `codigo_proveedor` INT(11) NOT NULL,
  `nombre` VARCHAR(50) NOT NULL,
  `email` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`codigo_proveedor`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `garden_db`.`producto_proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`producto_proveedor` (
  `codigo_producto` VARCHAR(15) NOT NULL,
  `codigo_proveedor` INT(11) NOT NULL,
  `precio_proveedor` DECIMAL(15,2) NOT NULL,
  PRIMARY KEY (`codigo_producto`, `codigo_proveedor`),
  INDEX `codigo_producto_idx` (`codigo_producto` ASC) VISIBLE,
  INDEX `codigo_proveedor_idx` (`codigo_proveedor` ASC) VISIBLE,
  CONSTRAINT `FK_cod_producto`
    FOREIGN KEY (`codigo_producto`)
    REFERENCES `garden_db`.`producto` (`codigo_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_cod_proveedor`
    FOREIGN KEY (`codigo_proveedor`)
    REFERENCES `garden_db`.`proveedor` (`codigo_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`estado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`estado` (
  `codigo_estado` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`codigo_estado`));


-- -----------------------------------------------------
-- Table `garden_db`.`pais`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`pais` (
  `codigo_pais` VARCHAR(5) NOT NULL,
  `nombre_pais` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codigo_pais`));


-- -----------------------------------------------------
-- Table `garden_db`.`region`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`region` (
  `codigo_region` VARCHAR(10) NOT NULL,
  `nombre_region` VARCHAR(50) NOT NULL,
  `codigo_pais` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`codigo_region`),
  INDEX `codigo_pais_idx` (`codigo_pais` ASC) VISIBLE,
  CONSTRAINT `codigo_pais`
    FOREIGN KEY (`codigo_pais`)
    REFERENCES `garden_db`.`pais` (`codigo_pais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`ciudad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`ciudad` (
  `codigo_ciudad` INT(11) NOT NULL,
  `nombre_ciudad` VARCHAR(50) NOT NULL,
  `codigo_region` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`codigo_ciudad`),
  INDEX `codigo_region_idx` (`codigo_region` ASC) VISIBLE,
  CONSTRAINT `codigo_region`
    FOREIGN KEY (`codigo_region`)
    REFERENCES `garden_db`.`region` (`codigo_region`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`oficina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`oficina` (
  `codigo_oficina` INT(11) NOT NULL,
  `codigo_ciudad` INT(11) NOT NULL,
  `codigo_postal` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`codigo_oficina`),
  INDEX `codigo_region_idx` (`codigo_ciudad` ASC) VISIBLE,
  CONSTRAINT `FK_ofi_ciudad`
    FOREIGN KEY (`codigo_ciudad`)
    REFERENCES `garden_db`.`ciudad` (`codigo_ciudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`puesto_empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`puesto_empleado` (
  `codigo_puesto_empleado` INT(11) NOT NULL,
  `nombre_puesto` VARCHAR(45) NOT NULL,
  `extension` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`codigo_puesto_empleado`),
  UNIQUE INDEX `extension_UNIQUE` (`extension` ASC) VISIBLE);


-- -----------------------------------------------------
-- Table `garden_db`.`empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`empleado` (
  `codigo_empleado` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_empleado` VARCHAR(50) NOT NULL,
  `apellido1_emprelado` VARCHAR(50) NOT NULL,
  `apellido2_empleado` VARCHAR(50) NULL,
  `email_empleado` VARCHAR(100) NOT NULL,
  `codigo_oficina` INT(11) NOT NULL,
  `codigo_jefe` INT(11) NULL,
  `codigo_puesto_empleado` INT(11) NOT NULL,
  PRIMARY KEY (`codigo_empleado`),
  UNIQUE INDEX `email_empleado_UNIQUE` (`email_empleado` ASC) VISIBLE,
  INDEX `codigo_oficina_idx` (`codigo_oficina` ASC) VISIBLE,
  INDEX `codigo_jefe_idx` (`codigo_jefe` ASC) VISIBLE,
  INDEX `codigo_puesto_empleado_idx` (`codigo_puesto_empleado` ASC) VISIBLE,
  CONSTRAINT `FK_emple_oficina`
    FOREIGN KEY (`codigo_oficina`)
    REFERENCES `garden_db`.`oficina` (`codigo_oficina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_cod_jefe`
    FOREIGN KEY (`codigo_jefe`)
    REFERENCES `garden_db`.`empleado` (`codigo_empleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_puesto_empleado`
    FOREIGN KEY (`codigo_puesto_empleado`)
    REFERENCES `garden_db`.`puesto_empleado` (`codigo_puesto_empleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`cliente` (
  `codigo_cliente` INT(11) NOT NULL,
  `nombre_cliente` VARCHAR(50) NOT NULL,
  `codigo_ciudad` INT(11) NOT NULL,
  `codigo_postal` VARCHAR(10) NOT NULL,
  `limite_credito` DECIMAL(15,2) NULL,
  `codigo_rep_ventas` INT(11) NOT NULL,
  PRIMARY KEY (`codigo_cliente`),
  INDEX `FK_cod_ciudad_idx` (`codigo_ciudad` ASC) VISIBLE,
  INDEX `FK_cod_rep_ventas_idx` (`codigo_rep_ventas` ASC) VISIBLE,
  CONSTRAINT `FK_cliente_ciudad`
    FOREIGN KEY (`codigo_ciudad`)
    REFERENCES `garden_db`.`ciudad` (`codigo_ciudad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_cod_rep_ventas`
    FOREIGN KEY (`codigo_rep_ventas`)
    REFERENCES `garden_db`.`empleado` (`codigo_empleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`pedido` (
  `codigo_pedido` VARCHAR(15) NOT NULL,
  `fecha_pedido` DATE NOT NULL,
  `fecha_esperada` DATE NOT NULL,
  `fecha_entrega` DATE NULL,
  `comentarios` TEXT NULL,
  `codigo_cliente` INT(11) NOT NULL,
  `codigo_estado` INT NOT NULL,
  PRIMARY KEY (`codigo_pedido`),
  INDEX `codigo_estado_idx` (`codigo_estado` ASC) VISIBLE,
  INDEX `codigo_cliente_idx` (`codigo_cliente` ASC) VISIBLE,
  CONSTRAINT `FK_pedido_estado`
    FOREIGN KEY (`codigo_estado`)
    REFERENCES `garden_db`.`estado` (`codigo_estado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_pedido_cliente`
    FOREIGN KEY (`codigo_cliente`)
    REFERENCES `garden_db`.`cliente` (`codigo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`detalle_pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`detalle_pedido` (
  `codigo_producto` VARCHAR(15) NOT NULL,
  `codigo_pedido` VARCHAR(15) NOT NULL,
  `cantidad` INT(11) NOT NULL,
  `precio_unidad` DECIMAL(15,2) NOT NULL,
  `numero_linea` SMALLINT(6) NOT NULL,
  PRIMARY KEY (`codigo_producto`, `codigo_pedido`),
  INDEX `codigo_pedido_idx` (`codigo_pedido` ASC) VISIBLE,
  CONSTRAINT `FK_det_ped_prod`
    FOREIGN KEY (`codigo_producto`)
    REFERENCES `garden_db`.`producto` (`codigo_producto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_codigo_pedido`
    FOREIGN KEY (`codigo_pedido`)
    REFERENCES `garden_db`.`pedido` (`codigo_pedido`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`tipo_telefono`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`tipo_telefono` (
  `codigo_tipo_telefono` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_telefono` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codigo_tipo_telefono`));


-- -----------------------------------------------------
-- Table `garden_db`.`telefono_cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`telefono_cliente` (
  `codigo_telefono_cliente` INT(11) NOT NULL AUTO_INCREMENT,
  `telefono_cliente` VARCHAR(50) NOT NULL,
  `codigo_cliente` INT(11) NOT NULL,
  `codigo_tipo_telefono` INT(11) NULL,
  PRIMARY KEY (`codigo_telefono_cliente`),
  INDEX `codigo_tipo_telefono_idx` (`codigo_tipo_telefono` ASC) VISIBLE,
  INDEX `codigo_cliente_idx` (`codigo_cliente` ASC) VISIBLE,
  CONSTRAINT `FK_tipo_tel`
    FOREIGN KEY (`codigo_tipo_telefono`)
    REFERENCES `garden_db`.`tipo_telefono` (`codigo_tipo_telefono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_cliente_tel`
    FOREIGN KEY (`codigo_cliente`)
    REFERENCES `garden_db`.`cliente` (`codigo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`tipo_direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`tipo_direccion` (
  `codigo_tipo_dir` SMALLINT NOT NULL AUTO_INCREMENT,
  `nombre_tipo_dir` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codigo_tipo_dir`));


-- -----------------------------------------------------
-- Table `garden_db`.`direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`direccion` (
  `codigo_direccion` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_calle` VARCHAR(50) NULL,
  `numero_direccion` VARCHAR(50) NULL,
  `nombre_barrio` VARCHAR(50) NULL,
  `codigo_cliente` INT(11) NOT NULL,
  `codigo_tipo_dir` SMALLINT NOT NULL,
  PRIMARY KEY (`codigo_direccion`),
  INDEX `codigo_cliente_idx` (`codigo_cliente` ASC) VISIBLE,
  INDEX `codigo_tipo_dir_idx` (`codigo_tipo_dir` ASC) VISIBLE,
  CONSTRAINT `FK_cliente_dir`
    FOREIGN KEY (`codigo_cliente`)
    REFERENCES `garden_db`.`cliente` (`codigo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_dir_tipo_dir`
    FOREIGN KEY (`codigo_tipo_dir`)
    REFERENCES `garden_db`.`tipo_direccion` (`codigo_tipo_dir`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`contacto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`contacto` (
  `codigo_contacto` VARCHAR(25) NOT NULL,
  `primer_nombre_contacto` VARCHAR(50) NOT NULL,
  `primer_apellido_contacto` VARCHAR(50) NOT NULL,
  `email_contacto` VARCHAR(50) NOT NULL,
  `segundo_apellido_contacto` VARCHAR(50) NULL,
  `segundo_nombre_contacto` VARCHAR(50) NULL,
  `codigo_cliente` INT(11) NOT NULL,
  PRIMARY KEY (`codigo_contacto`),
  UNIQUE INDEX `email_contacto_UNIQUE` (`email_contacto` ASC) VISIBLE,
  INDEX `codigo_cliente_idx` (`codigo_cliente` ASC) VISIBLE,
  CONSTRAINT `FK_contact_cliente`
    FOREIGN KEY (`codigo_cliente`)
    REFERENCES `garden_db`.`cliente` (`codigo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`metodo_pago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`metodo_pago` (
  `codigo_metodo_pago` INT NOT NULL AUTO_INCREMENT,
  `nombre_met_pago` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`codigo_metodo_pago`));


-- -----------------------------------------------------
-- Table `garden_db`.`pago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`pago` (
  `codigo_pago` INT(11) NOT NULL AUTO_INCREMENT,
  `fecha_pago` DATE NOT NULL,
  `total_pago` DECIMAL(15,2) NOT NULL,
  `codigo_cliente` INT(11) NOT NULL,
  `codigo_met_pago` INT(11) NOT NULL,
  PRIMARY KEY (`codigo_pago`),
  INDEX `codigo_cliente_idx` (`codigo_cliente` ASC) VISIBLE,
  INDEX `codigo_met_pago_idx` (`codigo_met_pago` ASC) VISIBLE,
  CONSTRAINT `FK_pago_cliente`
    FOREIGN KEY (`codigo_cliente`)
    REFERENCES `garden_db`.`cliente` (`codigo_cliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_cod_met_pago`
    FOREIGN KEY (`codigo_met_pago`)
    REFERENCES `garden_db`.`metodo_pago` (`codigo_metodo_pago`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`direccion_oficina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`direccion_oficina` (
  `codigo_direccion` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre_calle` VARCHAR(50) NULL,
  `numero_direccion` VARCHAR(50) NULL,
  `nombre_barrio` VARCHAR(50) NULL,
  `codigo_oficina` INT(10) NOT NULL,
  `codigo_tipo_dir` SMALLINT NOT NULL,
  PRIMARY KEY (`codigo_direccion`),
  INDEX `codigo_oficina_idx` (`codigo_oficina` ASC) VISIBLE,
  INDEX `codigo_tipo_dir_idx` (`codigo_tipo_dir` ASC) VISIBLE,
  CONSTRAINT `FK_dir_oficina`
    FOREIGN KEY (`codigo_oficina`)
    REFERENCES `garden_db`.`oficina` (`codigo_oficina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_tipo_dir_ofi`
    FOREIGN KEY (`codigo_tipo_dir`)
    REFERENCES `garden_db`.`tipo_direccion` (`codigo_tipo_dir`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table `garden_db`.`telefono_oficina`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `garden_db`.`telefono_oficina` (
  `codigo_telefono_oficina` INT(11) NOT NULL AUTO_INCREMENT,
  `telefono_oficina` VARCHAR(50) NOT NULL,
  `codigo_tipo_telefono` INT(11) NOT NULL,
  `codigo_oficina` INT(11) NOT NULL,
  PRIMARY KEY (`codigo_telefono_oficina`),
  INDEX `codigo_tipo_telefono_idx` (`codigo_tipo_telefono` ASC) VISIBLE,
  INDEX `codigo_oficina_idx` (`codigo_oficina` ASC) VISIBLE,
  CONSTRAINT `FK_tipo_tel_ofi`
    FOREIGN KEY (`codigo_tipo_telefono`)
    REFERENCES `garden_db`.`tipo_telefono` (`codigo_tipo_telefono`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_tel_oficina`
    FOREIGN KEY (`codigo_oficina`)
    REFERENCES `garden_db`.`oficina` (`codigo_oficina`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);