# Research Platform

### Dependency
* [Nojejs 6.9.1](https://nodejs.org/)
* [MySQL 5.7](https://www.mysql.com/)

### Operation System
Ubuntu 16.04

### Configuration
Set up your configuration of mysql in `db/db_config.json` and `db/db_config.js`.

Create database in your server.

	mysql -u [USER] -p < db/createDB.sql

Load test data into database.

	mysql -u [USER] -p research_platform < db/loadDB.sql

Add npm packages.

	npm install
    
Additionally, to config the administration app, please install express-admin at the same time.

	npm install -g express-admin
    
### Run Server

Start main application.

	npm start
    
Start administration application.

	admin db/

After that, the server is running at `http://localhost:3000`.
    
### Copytight

All rights reserved.
