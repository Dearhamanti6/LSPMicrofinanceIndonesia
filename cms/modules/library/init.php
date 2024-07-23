<?php
	
// Route default
Route::set('library', 'library(/<action>(/<page>(/<id>(/<dom>(/<type>)))))')
	->defaults(array(
		'controller' => 'Library',
		'action'     => 'index'
	));