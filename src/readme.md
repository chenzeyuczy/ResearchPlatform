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
    
The default ports for main application and admin application are 3000 and 3001 respectively.
    
### Debug Method

To debug the jade template, put your jade files under `views` folder and add the following function in `routes/router.js`. Then start the main application.
```
router.get('/PATH_U_LIKE', function(req, res, next) {
	res.render('NAME_OF_JADE_WITHOUT_SUFFIX');
});
```
You can review your jade file in `ADDRESS:PORT/PATH_U_LIKE`.
