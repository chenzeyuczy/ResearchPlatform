var express = require('express');
var router = express.Router();
var db_config = require('../db/db_config');
var mysql = require('mysql');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var async = require('async');
var months = ['JAN', 'FEB', "MAR", 'APR', 'MAY', 'JUN', 'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'];

/* Specify local strategy for passport use */
passport.use(new LocalStrategy(
	function(username, password, done) {
		var connection = mysql.createConnection(db_config);
		var sql = 'SELECT * FROM `users` WHERE users.username = ?';
		connection.query(sql, [username], function(err, rows, fields) {
			if (err) return done(err);
			if (0 == rows.length)
				return done(null, false, { message: 'username/password incorrect' });
			if (password != rows[0].passwd)
				return done(null, false, { message: 'username/password incorrect' });
			return done(null, rows[0], { message: 'successfully authenticated' });
		});
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
	res.render('index', {
		user_login: req.user ? true : false,
		username: req.user ? req.user.username : null
	});
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
		res.render('project', {
			content_type: 'Project',
			content_type_cn: '课题项目',
			list_items: result,
			user_login: req.user ? true : false,
			username: req.user ? req.user.username : null
		});
	});
	connection.end();
});

router.get('/project/:pj_id', function(req, res, next) {
	var result = new Object();
	var project = new Object();
	var dataset = new Object();
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT pj_id AS id, pj_name AS title, pj_type AS type FROM project ORDER BY pj_type;';
	sql += 'SELECT pj_intro AS intro, pj_progress AS progress FROM project WHERE pj_id=' + req.params['pj_id'] + ';';
	sql += 'SELECT dt_id AS id, dt_title AS title FROM data_tool WHERE dt_id IN (SELECT dt_id FROM project_data_tool WHERE pj_id=' + req.params['pj_id'] + ') AND dt_type=1;';
	sql += 'SELECT ar_title AS title, ar_link AS link FROM article WHERE ar_id IN (SELECT ar_id FROM project_article WHERE pj_id=' + req.params['pj_id'] + ' AND pj_ar_type=0);';
	sql += 'SELECT ar_title AS title, ar_link AS link FROM article WHERE ar_id IN (SELECT ar_id FROM project_article WHERE pj_id=' + req.params['pj_id'] + ' AND pj_ar_type=1);';
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
			project.progress = project.progress.slice(0, 100);
		}
		console.log('Dataset number: ', rows[2].length);
		if (rows[2].length > 0) {
			project.dataset = [];
			for (var i = 0; i < rows[2].length; i++) {
				dataset.title = rows[2][i].title;
				dataset.link = '/data_tool#data_tool_' + rows[2][i].id;
				console.log(dataset);
				project.dataset.push(dataset);
			}
			console.log(project.dataset);
		}
		console.log('Article published:', rows[3]);
		if (rows[3].length > 0) {
			project.ar_publish = [];
			for (var i = 0; i < rows[3].length; i++) {
				project.ar_publish.push({'title': rows[3][i].title, 'link': rows[3][i].link});
			}
		}
		console.log('Article related:', rows[4]);
		if (rows[4].length > 0) {
			project.ar_related = [];
			for (var i = 0; i < rows[4].length; i++) {
				project.ar_related.push({'title': rows[4][i].title, 'link': rows[4][i].link});
			}
		}
		console.log('Number of matched query: ', rows[0].length);
		res.render('project', {
			user_login: req.user ? true : false,
			username: req.user ? req.user.username : null,
			content_type: 'Project', content_type_cn: '课题项目', list_items: result, project: project
		});
	});
	connection.end();
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
		res.render('conference_progress', {
			user_login: req.user ? true : false,
			username: req.user ? req.user.username : null,
			content_type: 'Progress', content_type_cn: '项目进展', list_items: result, content: content
		});
	});
	connection.end();
});

/* Team page */
router.get('/team', function(req, res, next) {
	res.redirect('/team/1');
});

router.get('/team/:tm_id', function(req, res, next) {
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT * FROM `team` WHERE tm_id = ' + req.params['tm_id'] + ';';
	sql += 'SELECT ar_title, ar_link FROM `article` WHERE article.ar_id IN ';
	sql += '(SELECT ar_id FROM `team_article` WHERE tm_id = ' + req.params['tm_id'] + ');';
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		var current_team = {
			team_name: rows[0][0].tm_name,
			team_focus: rows[0][0].tm_focus,
			team_work: rows[0][0].tm_work,
			team_article_list: rows[1]
		};
		var teams = [];
		connection.query('SELECT * FROM `team`;', function(err, rows, fields) {
			if (err) throw err;
			for (i = 0; i < rows.length; i++) {
				teams.push({
					team_id: rows[i].tm_id,
					team_link: '/team/' + rows[i].tm_id,
					team_name: rows[i].tm_name,
					team_focus: rows[i].tm_focus,
					team_work: rows[i].tm_work,
					team_members: []
				});
			}
			async.each(teams, function(team, callback) {
				var sql = 'SELECT mb_id, mb_name FROM `member` WHERE member.mb_id IN ';
				sql += '(SELECT mb_id FROM `team_member` WHERE team_member.tm_id = ' + team.team_id + ');'
				connection.query(sql, function(err, rows, fields) {
					if (err) callback(err);
					for (i = 0; i < rows.length; i++) {
						team.team_members.push({
							member_link: '/member/' + rows[i].mb_id,
							member_name: rows[i].mb_name
						});
					}
					callback();
				});
			}, function(err) {
				if (err) throw err;
				res.render('team_member', {
					user_login: req.user ? true : false,
					username: req.user ? req.user.username : null,
					content_type: 'Research Teams',
					content_type_cn: '研究团队',
					main_team: teams[0],
					other_teams: teams.slice(1),
					current_team: current_team,
					show_detail: true,
					show_team: true
				});
			});
		});
	});
});

/* Member page */
router.get('/member/:mb_id', function(req, res, next) {
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT * FROM `member` WHERE mb_id = ' + req.params['mb_id'] + ';';
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		var current_member = {
			member_name: rows[0].mb_name,
			member_focus: rows[0].mb_focus,
			member_intro: rows[0].mb_intro,
			member_work: rows[0].mb_work
		};
		var teams = [];
		connection.query('SELECT * FROM `team`;', function(err, rows, fields) {
			if (err) throw err;
			for (i = 0; i < rows.length; i++) {
				teams.push({
					team_id: rows[i].tm_id,
					team_link: '/team/' + rows[i].tm_id,
					team_name: rows[i].tm_name,
					team_focus: rows[i].tm_focus,
					team_work: rows[i].tm_work,
					team_members: []
				});
			}
			async.each(teams, function(team, callback) {
				var sql = 'SELECT mb_id, mb_name FROM `member` WHERE member.mb_id IN ';
				sql += '(SELECT mb_id FROM `team_member` WHERE team_member.tm_id = ' + team.team_id + ');'
				connection.query(sql, function(err, rows, fields) {
					if (err) callback(err);
					for (i = 0; i < rows.length; i++) {
						team.team_members.push({
							member_link: '/member/' + rows[i].mb_id,
							member_name: rows[i].mb_name
						});
					}
					callback();
				});
			}, function(err) {
					if (err) throw err;
					res.render('team_member', {
						user_login: req.user ? true : false,
						username: req.user ? req.user.username : null,
						content_type: 'Research Teams',
						content_type_cn: '研究团队',
						main_team: teams[0],
						other_teams: teams.slice(1),
						current_member: current_member,
						show_detail: true,
						show_team: false
					});
			});
		});
	});
});

/* News page */
router.get('/news', function(req, res, next) {
	var result = [];
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT ne_title AS title, ne_id AS id, EXTRACT(year FROM ne_date) AS year, EXTRACT(month FROM ne_date) AS month, EXTRACT(day FROM ne_date) AS day FROM news ORDER BY ne_date;';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) throw err;
		for (i = 0; i < rows.length; i++) {
			result.push({'title': rows[i].title, 'link': '/news/' + rows[i].id, 'year': rows[i].year, 'month': months[rows[i].month - 1], 'day': rows[i].day});
		}
		console.log('Number of matched query: ', rows.length);
		console.log(result);
		res.render('list', {
			user_login: req.user ? true : false,
			username: req.user ? req.user.username : null,
			content_type: 'News', content_type_cn: '新闻动态', list_items: result
		});
	});
});

router.get('/news/:ne_id', function(req, res, next) {
	var result = new Object();
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT ne_title AS title, ne_content AS content, EXTRACT(year FROM ne_date) AS year, EXTRACT(month FROM ne_date) AS month, EXTRACT(day FROM ne_date) AS day FROM news WHERE ne_id = ' + req.params['ne_id'] + ';';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) {
			res.render('detail', {
				user_login: req.user ? true : false,
				username: req.user ? req.user.username : null,
				content_type: 'News', content_type_cn: '新闻动态'
			});
			return;
		}
		console.log('Number of matched query: ', rows.length);
		console.log(rows);
		if (rows.length > 0) {
			result['title'] = rows[0].title;
			result['detail'] = rows[0].content;
			result['year'] = rows[0].year;
			result['month'] = rows[0].month;
			result['day'] = rows[0].day;
			res.render('detail', {
				user_login: req.user ? true : false,
				username: req.user ? req.user.username : null,
				content_type: 'News', content_type_cn: '新闻动态', content: result
			});
		} else {
			res.render('detail', {
				user_login: req.user ? true : false,
				username: req.user ? req.user.username : null,
				content_type: 'News', content_type_cn: '新闻动态'
			});
		}
	});
	connection.end();
});

/* Notification page */
router.get('/notification', function(req, res, next) {
	var result = [];
	var connection = mysql.createConnection(db_config);
	connection.connect();
	connection.query('SELECT nt_title AS title, nt_id AS id, EXTRACT(year FROM nt_date) AS year, EXTRACT(month FROM nt_date) AS month, EXTRACT(day FROM nt_date) AS day FROM notification ORDER BY nt_date;', function(err, rows, fields) {
		if (err) throw err;
		for (i = 0; i < rows.length; i++) {
			result.push({'title': rows[i].title, 'link': '/notification/' + rows[i].id, 'year': rows[i].year, 'month': months[rows[i].month - 1], 'day': rows[i].day});
		}
		console.log('Number of matched query: ', rows.length);
		console.log(result);
		res.render('list', {
			user_login: req.user ? true : false,
			username: req.user ? req.user.username : null,
			content_type: 'Notification', content_type_cn: '最新公告', list_items: result
		});
	});
	connection.end();
});

router.get('/notification/:nt_id', function(req, res, next) {
	var result = new Object();
	var connection = mysql.createConnection(db_config);
	var sql = 'SELECT nt_title AS title, nt_content AS content, EXTRACT(year FROM nt_date) AS year, EXTRACT(month FROM nt_date) AS month, EXTRACT(day FROM nt_date) AS day FROM notification WHERE nt_id = ' + req.params['nt_id'] + ';';
	connection.connect();
	connection.query(sql, function(err, rows, fields) {
		if (err) {
			res.render('detail', {
				user_login: req.user ? true : false,
				username: req.user ? req.user.username : null,
				content_type: 'Notification', content_type_cn: '最新公告'
			});
			return;
		}
		console.log('Number of matched query: ', rows.length);
		console.log(rows);
		if (rows.length > 0) {
			result['title'] = rows[0].title;
			result['detail'] = rows[0].content;
			result['year'] = rows[0].year;
			result['month'] = rows[0].month;
			result['day'] = rows[0].day;
			res.render('detail', {
				user_login: req.user ? true : false,
				username: req.user ? req.user.username : null,
				content_type: 'Notification', content_type_cn: '最新公告', content: result
			});
		} else {
			res.render('detail', {
				user_login: req.user ? true : false,
				username: req.user ? req.user.username : null,
				content_type: 'Notification', content_type_cn: '最新公告'
			});
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
		res.render('conference_progress', {
			user_login: req.user ? true : false,
			username: req.user ? req.user.username : null,
			content_type: 'Conference', content_type_cn: '学术交流', list_items: result
		});
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
		res.render('conference_progress', {
			user_login: req.user ? true : false,
			username: req.user ? req.user.username : null,
			content_type: 'Conference', content_type_cn: '学术交流', list_items: result, content: content
		});
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
		res.render('article', {
			user_login: req.user ? true : false,
			username: req.user ? req.user.username : null,
			content_type: 'Article', content_type_cn: '发表文章', list_items: result
		});
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
		res.render('article', {
			user_login: req.user ? true : false,
			username: req.user ? req.user.username : null,
			content_type: 'Article', content_type_cn: '发表文章', list_items: result
		});
	});
	connection.end();
});

/* Data_tool page */
router.get('/data_tool', function(req, res, next) {
	minRequestedLevel = 1
	if (req.isAuthenticated() && req.user.type >= minRequestedLevel) {
		var connection = mysql.createConnection(db_config);
		var sql = 'SELECT dt_id AS id, dt_title AS title, dt_link AS link, dt_type AS type FROM data_tool;';
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
						src_data.push({'title': rows[i].title, 'link': rows[i].link, 'id': rows[i].id});
						break;
					case 1:
						share_data.push({'title': rows[i].title, 'link': rows[i].link, 'id': rows[i].id});
						break;
					case 2:
						public_data.push({'title': rows[i].title, 'link': rows[i].link, 'id': rows[i].id});
						break;
					case 3:
						tools.push({'title': rows[i].title, 'link': rows[i].link, 'id': rows[i].id});
						break;
				}
			}
			console.log('Number of matched query: ', rows.length);
			console.log(src_data);
			console.log(share_data);
			console.log(public_data);
			console.log(tools);
			res.render('data_tool', {
				user_login: req.user ? true : false,
				username: req.user ? req.user.username : null,
				content_type: 'Data&Tool', content_type_cn: '数据工具',
				'src_data': src_data, 'share_data': share_data,
				'public_data': public_data, 'tools': tools
			});
		});
		connection.end();
	} else {
		res.redirect('/index');
	}
});

/* User page */
router.get('/register', function(req, res, next) {
	res.render('register', {
		user_login: req.user ? true : false,
		username: req.user ? req.user.username : null,
		content_type: 'Register', content_type_cn: '注册用户'
	});
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

/* Login & logout page */
router.post('/login',
	passport.authenticate('local', {
		successRedirect: '/index',
		failureRedirect: '/index'
	})
);

router.get('/logout', function(req, res, next) {
	req.logout();
	res.redirect('/index');
});

/* Contact page */
router.get('/contact', function(req, res, next) {
	res.render('contact', {
		user_login: req.user ? true : false,
		username: req.user ? req.user.username : null,
		content_type: 'Contact', content_type_cn: '联系我们'
	});
});

module.exports = router;
