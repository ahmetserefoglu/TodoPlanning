# TodoPlanning
Workshop


This project covers the creation of a weekly work plan, considering that it works 45 hours a week on a developer basis.

Symfony 4, Php 7.1.3 or higher version was used for this project.

For Symfony 4,
Our project was created with the composer create-project symfony / website-skeleton project_name command.

We adjust our database file
.env: DATABASE_URL = mysql: // db_user: db_password@127.0.0.1: 3306 / db_name
here you can adapt to your own computer.
php bin / console doctrine: database: create
You can create your database with the command.

Models were created for the Developer, Business and TodoWork lists we will use.
Model Create:
php bin / console make: entity ...
Migration File:
php bin / console doctrine: migrations: diff
Migration Created:
php bin / console doctrine: migrations: migrate

Then we will create Symfony (Command) Console files for the data we will extract from Api source and save the data from api source to our database.
php bin / console make: command ___name____
Commad Created:
php bin / console __commandname__

Controller:
php bin / console make: controller __name__
