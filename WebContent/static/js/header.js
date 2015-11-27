$(document).ready(function() {
	var url = window.location;
	$('ul.nav li.active').removeClass('active');
	$('ul.nav a[href="' + url + '"]').parent().addClass('active');
	$('ul.nav a').filter(function() {
		return this.href == url;
	}).parent().addClass('active');
});