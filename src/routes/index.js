var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.redirect('index');
});

router.get('/index', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.get('/project', function(req, res, next) {
	res.render('project', {title: 'Project'});
});

router.get('/proect/detail', function(req, res, next) {
	res.render('detail', {title: 'Project-Detail'});
});

router.get('/team', function(req, res, next) {
	res.render('team', {title: 'Team'});
});

router.get('/member', function(req, res, next) {
	res.render('member', {title: 'Member'});
});

router.get('/news', function(req, res, next) {
	res.render('list_view', {title: 'News'});
});

router.get('/news/detail', function(req, res, next) {
	res.render('detail_view', {title: 'News-Detail'});
});

router.get('/notification', function(req, res, next) {
	res.render('list_view', {title: 'Notification'});
});

router.get('/notification/detail', function(req, res, next) {
	res.render('detail_view', {title: 'Notification-Detail'});
});

router.get('/conference', function(req, res, next) {
	res.render('conference', {title: 'Conference'});
});

router.get('/article', function(req, res, next) {
	res.render('list_view', {title: 'Article'});
});

router.get('/data_tool', function(req, res, next) {
	res.render('data_tool', {title: 'data_tool'});
});

module.exports = router;
