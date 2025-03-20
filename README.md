here is medical card generator system
Install a Local Server (if not installed)

You need a local server like XAMPP, WAMP, or MAMP to run PHP and MySQL.

Download XAMPP: https://www.apachefriends.org/download.html

Download WAMP: https://www.wampserver.com/en/

Download MAMP (for macOS): https://www.mamp.info/en/downloads/


3. Move the Project to the Server Directory

If using XAMPP, move the project folder to:

C:\xampp\htdocs\

If using WAMP, move it to:

C:\wamp64\www\


4. Start Apache and MySQL

Open XAMPP/WAMP Control Panel.

Start Apache and MySQL services.


5. Configure the Database

Open phpMyAdmin in your browser:

http://localhost/phpmyadmin/

Create a new database (e.g., my_database).

Import the project's database:

Click Import, select the .sql file from the project (usually in a database or sql folder), and import it.



6. Update Database Connection in the Project

Open the project folder and find the database configuration file.

Common locations:

config.php

.env

database.php



Update the database credentials:

$servername = "localhost";
$username = "root";  // Default XAMPP user
$password = "";  // Default XAMPP password (leave empty)
$dbname = "my_database";


7. Run the Project

Open a browser and go to:

http://localhost/project-folder-name/