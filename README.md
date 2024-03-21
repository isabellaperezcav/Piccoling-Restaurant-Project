# Piccoling-Restaurant-Project
The Piccoling Restaurant project consists of the creation of a web application with a layered architecture, using 3 microservices mounted on an ubuntu server with an ip 192.168.100.2.
The 3 microservices are:
1. Users: manages the HTTP methods for the creation of users, using the table "usuarios" created in mysql.
2. Inventory: it administers the HTTP methods for the creation of ingredients and menus that so many available quantities there are of them and allows that when menu is reduced, also it does inventory and also allows that when increasing an ingredient the quantity in menu increases, for it uses the tables "menu", "inventario" and "preparacion" (it allows the relation many to many for the communication between menu and ingredients) created in mysql.
3. Invoices: it administers the HTTP methods for the creation of invoices to the users once they make an order, it takes from "usuarios" the name and mail data to know in whose name the invoice will go and it takes from "menu" the prices to make the corresponding calculation of the total of the account, in addition it connects with "menu" to decrease the quantity that the user ordered for it uses the table "facturas" created in mysql.

All the tables mentioned above were created in a database called "piccoling".

Each microservice has a src where are the codes managed in layers, before starting it, for each src you must do an ```npm init -yes``` and the installation of the libraries ```npm install express morgan mysql mysql2 axios``` ; you can ignore the installation of axios in the inventory and users folders.
in this case, the mysql tables and apis are in the server with ip 192.168.100.4, while the web application "webPiccoling" will be in XAMPP, specifically in the htdocs folder inside xampp, this because the application will use apache


If you want more information or want to use this project and/or its codes, please contact us at isabellaperezcav@gmail.com