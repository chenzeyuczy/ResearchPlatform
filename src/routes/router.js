var express = require('express');
var router = express.Router();
var db_config = require('../db/db_config');
var mysql = require('mysql')

/* Index page */
router.get('/', function(req, res, next) {
  res.redirect('/index');
});

router.get('/index', function(req, res, next) {
  res.render('index');
});

/* Project page */
router.get('/project', function(req, res, next) {
	var result = new Object();
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT pj_id AS id, pj_name AS title, pj_type AS type FROM project ORDER BY pj_type;';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		for (var i = 0; i < rows.length; i++) {
			var type = rows[i].type;
			if (! (type in result)) {
				result[type] = [];
			}
			result[type].push({'title': rows[i].title, 'link': '/project/' + rows[i].id});
		}
		console.log('Number of matched query: ', rows.length);
		console.log(result);
		res.render('project', {content_type: 'Project', content_type_cn: '课题项目', list_items: result});
	});
	connection.end();
	// res.render('main', {content_type: 'Project', content_type_cn: '课题项目'});
});

router.get('/project/:pj_id', function(req, res, next) {
	var result = new Object();
	var project = new Object();
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT pj_id AS id, pj_name AS title, pj_type AS type FROM project ORDER BY pj_type;';
	sql += 'SELECT pj_intro AS intro, pj_progress AS progress FROM project WHERE pj_id=' + req.params['pj_id'] + ';';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		for (var i = 0; i < rows[0].length; i++) {
			var type = rows[0][i].type;
			if (! (type in result)) {
				result[type] = [];
			}
			result[type].push({'title': rows[0][i].title, 'link': '/project/' + rows[0][i].id});
		}
		if (rows[1].length > 0) {
			project = rows[1][0];
			project.link = '/progress/' + req.params['pj_id'];
		}
		console.log('Number of matched query: ', rows[0].length);
		console.log(project);
		res.render('project', {content_type: 'Project', content_type_cn: '课题项目', list_items: result, project: project});
	});
	connection.end();
	// res.render('project', {content_type: 'Project', content_type_cn: '课题项目', title: req.params['pj_id']});
});

router.get('/progress/:pj_id', function(req, res, next) {
	var result = new Object();
	var content = new Object();
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT pj_id AS id, pj_name AS title, pj_type AS type FROM project ORDER BY pj_type;';
	sql += 'SELECT pj_name AS title, pj_progress AS progress FROM project WHERE pj_id=' + req.params['pj_id'] + ';';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		for (var i = 0; i < rows[0].length; i++) {
			var type = rows[0][i].type;
			if (! (type in result)) {
				result[type] = [];
			}
			result[type].push({'title': rows[0][i].title, 'link': '/project/' + rows[0][i].id});
		}
		if (rows[1].length > 0) {
			content.title = rows[1][0].title;
			content.detail = rows[1][0].progress;
		}
		console.log('Number of matched query: ', rows[0].length);
		console.log(result);
		console.log(content);
		res.render('conference_progress', {content_type: 'Progress', content_type_cn: '项目进展', list_items: result, content: content});
	});
	connection.end();
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
	var result = new Object();
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT cf_id AS id, cf_title AS title, EXTRACT(year FROM cf_date) AS year FROM conference ORDER BY cf_date;';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		for (var i = 0; i < rows.length; i++) {
			var year = rows[i].year;
			if (! (year in result)) {
				result[year] = [];
			}
			result[year].push({'title': rows[i].title, 'link': '/conference/' + rows[i].id});
		}
		console.log('Number of matched query: ', rows.length);
		console.log(result);
		res.render('conference_progress', {content_type: 'Conference', content_type_cn: '学术交流', list_items: result});
	});
	connection.end();
});

router.get('/conference/:cf_id', function(req, res, next) {
	var result = new Object();
	var content = new Object();
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT cf_id AS id, cf_title AS title, EXTRACT(year FROM cf_date) AS year FROM conference ORDER BY cf_date;';
	sql += 'SELECT cf_title AS title, cf_content AS content FROM conference WHERE cf_id=' + req.params['cf_id'] + ';';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		for (var i = 0; i < rows[0].length; i++) {
			var year = rows[0][i].year;
			if (! (year in result)) {
				result[year] = [];
			}
			result[year].push({'title': rows[0][i].title, 'link': '/conference/' + rows[0][i].id});
		}
		if (rows[1].length > 0) {
			content.title = rows[1][0].title;
			content.detail = rows[1][0].content;
		}
		console.log('Number of matched query: ', rows[0].length);
		console.log(result);
		console.log(content);
		res.render('conference_progress', {content_type: 'Conference', content_type_cn: '学术交流', list_items: result, content: content});
	});
	connection.end();
});

/* Article page */
router.get('/article', function(req, res, next) {
	var result = new Object();;
	var connection = mysql.createConnection(db_config);
	var sql = 'SET @rank=0;';
	sql += 'SELECT @rank:=@rank+1 AS rank, ar_title AS title, ar_link AS link, ar_author AS author, extract(year from ar_date) AS year FROM article ORDER BY ar_date;';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err || rows[1].length < 1) throw err;
		for (var i = 0; i < rows[1].length; i++) {
			var year = rows[1][i].year;
			if (! (year in result)) {
				result[year] = [];
			}
			result[year].push({'title': rows[1][i].title, 'link': rows[1][i].link, 'rank': rows[1][i].rank, 'author': rows[1][i].author});
		}
		console.log('Number of matched query: ', rows[1].length);
		console.log(result);
		res.render('article', {content_type: 'Article', content_type_cn: '发表文章', list_items: result});
	});
	connection.end();
});

router.get('/article/:tm_id', function(req, res, next) {
	var result = new Object();;
	var connection = mysql.createConnection(db_config);
	var sql = 'SET @rank=0;';
	sql += 'SELECT @rank:=@rank+1 AS rank, ar_title AS title, ar_link AS link,'
		+ ' ar_author AS author, extract(year from ar_date) AS year FROM article'
		+ ' WHERE ar_id IN (SELECT ar_id FROM team_article'
		+ ' WHERE tm_id=' + req.params['tm_id'] + ') ORDER BY ar_date;';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err || rows[1].length < 1) throw err;
		for (var i = 0; i < rows[1].length; i++) {
			var year = rows[1][i].year;
			if (! (year in result)) {
				result[year] = [];
			}
			result[year].push({'title': rows[1][i].title, 'link': rows[1][i].link, 'rank': rows[1][i].rank, 'author': rows[1][i].author});
		}
		console.log('Number of matched query: ', rows[1].length);
		console.log(result);
		res.render('article', {content_type: 'Article', content_type_cn: '发表文章', list_items: result});
	});
	connection.end();
});

/* Data_tool page */
router.get('/data_tool', function(req, res, next) {
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT dt_title AS title, dt_link AS link, dt_type AS type FROM data_tool;';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		var src_data = [];
		var share_data = [];
		var public_data = [];
		var tools = [];
		for (i = 0; i < rows.length; i++) {
			switch (rows[i].type) {
				case 0:
					src_data.push({'title': rows[i].title, 'link': rows[i].link});
					break;
				case 1:
					share_data.push({'title': rows[i].title, 'link': rows[i].link});
					break;
				case 2:
					public_data.push({'title': rows[i].title, 'link': rows[i].link});
					break;
				case 3:
					tools.push({'title': rows[i].title, 'link': rows[i].link});
					break;
			}
		}
		console.log('Number of matched query: ', rows.length);
		console.log(src_data);
		console.log(share_data);
		console.log(public_data);
		console.log(tools);
		res.render('data_tool', {
			content_type: 'Data&Tool', content_type_cn: '数据工具',
			'src_data': src_data, 'share_data': share_data,
			'public_data': public_data, 'tools': tools
		});
	});
	connection.end();
});

/* User page */
router.get('/register', function(req, res, next) {
	res.render('register', {content_type: 'Register', content_type_cn: '注册用户'});
});

router.post('/register', function(req, res, next) {
	res.redirect('index');
});

router.post('/login', function(req, res, next) {
	res.redirect('index');
});

router.post('/logout', function(req, res, next) {
	res.redirect('index');
});

router.get('/contact', function(req, res, next) {
	res.render('contact', {content_type: 'Contact', content_type_cn: '联系我们'});
});

module.exports = router;
