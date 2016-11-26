var express = require('express');
var router = express.Router();
var db_config = require('../db/db_config');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.redirect('index');
});

router.get('/index', function(req, res, next) {
  res.render('index', {content_type: 'Express'});
});

router.get('/project', function(req, res, next) {
	res.render('main', {content_type: 'Project'});
});

router.get('/project/:pj_id', function(req, res, next) {
	res.render('main', {content_type: 'Project', title: req.params['pj_id']});
});

router.get('/progress/:pj_id', function(req, res, next) {
	res.render('main', {content_type: 'Project-Progress', title: req.params['pj_id']});
});

router.get('/team', function(req, res, next) {
	res.render('main', {content_type: 'Team'});
});

router.get('/team/:tm_id', function(req, res, next) {
	res.render('main', {content_type: 'Team', title: req.params['tm_id']});
});

router.get('/member', function(req, res, next) {
	res.render('main', {content_type: 'Member'});
});

router.get('/member/:mb_id', function(req, res, next) {
	res.render('main', {content_type: 'Member', title: req.params['mb_id']});
});

router.get('/news', function(req, res, next) {
	res.render('list', {content_type: 'News'});
});

router.get('/news/:ne_id', function(req, res, next) {
	res.render('detail', {content_type: 'News', title: req.params['ne_id']});
});

router.get('/notification', function(req, res, next) {
	res.render('list', {content_type: 'Notification'});
});

router.get('/notification/:nt_id', function(req, res, next) {
	res.render('detail', {content_type: 'Notification', title: req.params['nt_id']});
});

router.get('/conference', function(req, res, next) {
	res.render('main', {content_type: 'Conference'});
});

router.get('/conference/:cf:id', function(req, res, next) {
	res.render('main', {content_type: 'Conference', title: req.params['cf_id']});
});

router.get('/article', function(req, res, next) {
	var result = [];
	console.log(db_config);
	var mysql = require('mysql')
	var connection = mysql.createConnection(db_config);
	connection.connect();
	connection.query('SELECT ar_title AS title, ar_link AS url FROM article;', function(err, rows, fields) {
		if (err) throw err;

		for (i = 0; i < rows.length; i++) {
			result.push({'title': rows[i].title, 'url': rows[i].url});
		}

		for (i = 0; i < result.length; i++) {
			console.log('Title: ', result[i].title, ' Url: ', result[i].url);
		}
		res.render('list', {content_type: 'Article', list_items: result});
	});
	connection.end();

});

router.get('/data_tool', function(req, res, next) {
	res.render('main', {content_type: 'data_tool'});
});

router.get('/data_tool/:dt_id', function(req, res, next) {
	res.render('main', {content_type: 'data_tool', title: req.params['dt_id']});
});

module.exports = router;
