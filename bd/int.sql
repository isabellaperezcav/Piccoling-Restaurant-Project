create database proyecto
CREATE TABLE usuarios (
  nombreCompleto VARCHAR(90),
  correo VARCHAR(80),
  usuario VARCHAR(15) PRIMARY KEY,
  clave VARCHAR(50)
);

CREATE TABLE facturas (
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombreCliente VARCHAR(50),
    email VARCHAR(50),
    totalCuenta DECIMAL(10,2),
    fecha DATETIME DEFAULT
);

CREATE TABLE menu (
    id_menu int auto_increment,
    nombre VARCHAR(100),
    precio DECIMAL(10,2),
    cantidad INT(11)
    id_inventario INT AUTO_INCREMENT,
    ingrediente VARCHAR(100),
    cantidad_disponible INT,
    PRIMARY KEY (id_inventario)
);

CREATE TABLE preparacion (
    preparacion INT PRIMARY KEY AUTO_INCREMENT,
    menu_id INT,
    inventario_id INT,
    FOREIGN KEY (menu_id) REFERENCES menu,
    FOREIGN KEY (inventario_id) REFERENCES inventario
);