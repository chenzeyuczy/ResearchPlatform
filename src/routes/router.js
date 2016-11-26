var express = require('express');
var router = express.Router();
var db_config = require('../db/db_config');
var mysql = require('mysql')

/* Index page */
router.get('/', function(req, res, next) {
  res.redirect('index');
});

router.get('/index', function(req, res, next) {
  res.render('index', {content_type: 'Express'});
});

/* Project page */
router.get('/project', function(req, res, next) {
	res.render('main', {content_type: 'Project'});
});

router.get('/project/:pj_id', function(req, res, next) {
	res.render('main', {content_type: 'Project', title: req.params['pj_id']});
});

router.get('/progress/:pj_id', function(req, res, next) {
	res.render('main', {content_type: 'Project-Progress', title: req.params['pj_id']});
});

/* Team page */
router.get('/team', function(req, res, next) {
	res.render('main', {content_type: 'Team'});
});

router.get('/team/:tm_id', function(req, res, next) {
	res.render('main', {content_type: 'Team', title: req.params['tm_id']});
});

/* Member page */
router.get('/member', function(req, res, next) {
	res.render('main', {content_type: 'Member'});
});

router.get('/member/:mb_id', function(req, res, next) {
	res.render('main', {content_type: 'Member', title: req.params['mb_id']});
});

/* News page */
router.get('/news', function(req, res, next) {
	var result = [];
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT ne_title AS title, ne_id AS id FROM news;';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		for (i = 0; i < rows.length; i++) {
			result.push({'title': rows[i].title, 'link': '/news/' + rows[i].id});
		}
		console.log('Number of matched query: ', rows.length);
		console.log(result);
		res.render('list', {content_type: 'News', list_items: result});
	});
});

router.get('/news/:ne_id', function(req, res, next) {
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT ne_title AS title, ne_content AS content FROM news WHERE ne_id = ' + req.params['ne_id'] + ';';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		console.log('Number of matched query: ', rows.length);
		console.log(rows);
		if (rows.length > 0) {
			res.render('detail', {content_type: 'News', title: rows[0].title, detail: rows[0].content});
		} else {
			res.render('detail', {content_type: 'News'});
		}
	});
	connection.end();
});

/* Notification page */
router.get('/notification', function(req, res, next) {
	var result = [];
	var connection = mysql.createConnection(db_config);
	connection.connect();
	connection.query('SELECT nt_title AS title, nt_id AS id FROM notification;', function(err, rows, fields) {
		if (err) throw err;
		for (i = 0; i < rows.length; i++) {
			result.push({'title': rows[i].title, 'link': '/notification/' + rows[i].id});
		}
		console.log('Number of matched query: ', rows.length);
		console.log(result);
		res.render('list', {content_type: 'Notification', list_items: result});
	});
	connection.end();
});

router.get('/notification/:nt_id', function(req, res, next) {
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT nt_title AS title, nt_content AS content FROM notification WHERE nt_id = ' + req.params['nt_id'] + ';';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		console.log('Number of matched query: ', rows.length);
		console.log(rows);
		if (rows.length > 0) {
			res.render('detail', {content_type: 'Notification', title: rows[0].title, detail: rows[0].content});
		} else {
			res.render('detail', {content_type: 'Notification'});
		}
	});
	connection.end();
});

/* Conference page */
router.get('/conference', function(req, res, next) {
	res.render('main', {content_type: 'Conference'});
});

router.get('/conference/:cf:id', function(req, res, next) {
	res.render('main', {content_type: 'Conference', title: req.params['cf_id']});
});

/* Article page */
router.get('/article', function(req, res, next) {
	var result = [];
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT ar_title AS title, ar_link AS link FROM article;';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		for (i = 0; i < rows.length; i++) {
			result.push({'title': rows[i].title, 'link': rows[i].link});
		}
		console.log('Number of matched query: ', rows.length);
		console.log(result);
		res.render('list', {content_type: 'Article', list_items: result});
	});
	connection.end();
});

/* Data_tool page */
router.get('/data_tool', function(req, res, next) {
	res.render('main', {content_type: 'data_tool'});
});

router.get('/data_tool/:dt_id', function(req, res, next) {
	res.render('main', {content_type: 'data_tool', title: req.params['dt_id']});
});

/* User page */
router.get('/register', function(req, res, next) {
	res.render('/index');
});

router.post('/register', function(req, res, next) {
	res.render('/index');
});

router.post('/login', function(req, res, next) {
	res.render('/index');
});

router.post('/logout', function(req, res, next) {
	res.render('/index');
});

module.exports = router;
