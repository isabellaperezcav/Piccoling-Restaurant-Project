CREATE TABLE preparacion (
    preparacionid INT PRIMARY KEY AUTO_INCREMENT,
    menu_id INT,
    inventario_id INT,
    FOREIGN KEY (menu_id) REFERENCES menu(id_menu),
    FOREIGN KEY (inventario_id) REFERENCES inventario(id_inventario)
) ENGINE=InnoDB;