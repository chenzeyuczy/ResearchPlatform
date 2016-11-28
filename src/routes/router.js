var express = require('express');
var router = express.Router();
var db_config = require('../db/db_config');
var mysql = require('mysql');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;

/* Specify local strategy for passport use */
passport.use(new LocalStrategy(
  function(username, password, done) {
	var connection = mysql.createConnection(db_config);
    var sql = 'SELECT * FROM `users` WHERE username = ' + username;
    connection.connect();
    connection.query(sql, function(err, rows, fields) {
      if (err) return done(err);
      if (0 == rows.length)
        return done(null, false, { message: 'username/password incorrect' });
      if (password != rows[0].passwd)
        return done(null, false, { message: 'username/password incorrect' });
      return done(null, rows[0], { message: 'successfully authenticated' });
    });
    connection.end();
  }
));

/* Serialization & de-Serialization */
passport.serializeUser(function(user, done) {
  done(null, user);
});

passport.deserializeUser(function(user, done) {
  done(null, {username: user.username, type: user.type});
});


/* Index page */
router.get('/', function(req, res, next) {
  res.redirect('/index');
});

router.get('/index', function(req, res, next) {
  res.render('index');
});

/* Project page */
router.get('/project', function(req, res, next) {
	res.render('main', {content_type: 'Project', content_type_cn: '课题项目'});
});

router.get('/project/:pj_id', function(req, res, next) {
	res.render('main', {content_type: 'Project', content_type_cn: '课题项目', title: req.params['pj_id']});
});

router.get('/progress/:pj_id', function(req, res, next) {
	res.render('main', {content_type: 'Progress', content_type_cn: '项目进展', title: req.params['pj_id']});
});

/* Team page */
router.get('/team', function(req, res, next) {
	res.render('main', {content_type: 'Team', content_type_cn: '研究团队'});
});

router.get('/team/:tm_id', function(req, res, next) {
	res.render('main', {content_type: 'Team', content_type_cn: '研究团队', title: req.params['tm_id']});
});

/* Member page */
router.get('/member/:mb_id', function(req, res, next) {
	res.render('main', {content_type: 'Member', content_type_cn: '成员信息', title: req.params['mb_id']});
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
		res.render('list', {content_type: 'News', content_type_cn: '新闻动态', list_items: result});
	});
});

router.get('/news/:ne_id', function(req, res, next) {
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT ne_title AS title, ne_content AS content FROM news WHERE ne_id = ' + req.params['ne_id'] + ';';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) {
			res.render('detail', {content_type: 'News', content_type_cn: '新闻动态'});
			return;
		}
		console.log('Number of matched query: ', rows.length);
		console.log(rows);
		if (rows.length > 0) {
			res.render('detail', {content_type: 'News', content_type_cn: '新闻动态', title: rows[0].title, detail: rows[0].content});
		} else {
			res.render('detail', {content_type: 'News', content_type_cn: '新闻动态'});
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
		res.render('list', {content_type: 'Notification', content_type_cn: '最新公告', list_items: result});
	});
	connection.end();
});

router.get('/notification/:nt_id', function(req, res, next) {
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT nt_title AS title, nt_content AS content FROM notification WHERE nt_id = ' + req.params['nt_id'] + ';';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) {
			res.render('detail', {content_type: 'Notification', content_type_cn: '最新公告'});
			return;
		}
		console.log('Number of matched query: ', rows.length);
		console.log(rows);
		if (rows.length > 0) {
			res.render('detail', {content_type: 'Notification', content_type_cn: '最新公告', title: rows[0].title, detail: rows[0].content});
		} else {
			res.render('detail', {content_type: 'Notification', content_type_cn: '最新公告'});
		}
	});
	connection.end();
});

/* Conference page */
router.get('/conference', function(req, res, next) {
	res.render('main', {content_type: 'Conference', content_type_cn: '学术交流'});
});

router.get('/conference/:cf:id', function(req, res, next) {
	res.render('main', {content_type: 'Conference', content_type_cn: '学术交流', title: req.params['cf_id']});
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
		res.render('article', {content_type: 'Article', content_type_cn: '发表文章', list_items: result});
	});
	connection.end();
});

/* Data_tool page */
router.get('/data_tool', function(req, res, next) {
	res.render('main', {content_type: 'Data&Tool', content_type_cn: '数据工具'});
});

router.get('/data_tool/:dt_id', function(req, res, next) {
	res.render('main', {content_type: 'Data&Tool', content_type_cn: '数据工具', title: req.params['dt_id']});
});

/* User page */
router.get('/register', function(req, res, next) {
	res.render('register', {content_type: 'Register', content_type_cn: '注册用户'});
});

router.post('/register', function(req, res, next) {
	var connection = mysql.createConnection(db_config);
  connection.query('SELECT * FROM `users` WHERE username = ?',
    [req.body.username], function(err, rows, fields) {
    if (err) throw err;
    if (rows.length == 0 && req.body.password.length >= 4) {
      connection.query('INSERT INTO `users` VALUES (?,?,?)',
        [req.body.username, req.body.password, 0],
        function(err, rows) { if (err) throw err; }
      );
    } else {
      console.log('User [' + req.body.username + '] fail to register.');
    }
  });
	res.redirect('index');
});

// TODO
router.post('/login',
  passport.authenticate('local',  {
    successRedirect: '/',
    failureRedirect: '/'
  })
);

router.get('/logout', function(req, res, next) {
  req.logout();
  res.redirect('/index');
});

router.get('/contact', function(req, res, next) {
	res.render('contact', {content_type: 'Contact', content_type_cn: '联系我们'});
});

module.exports = router;
