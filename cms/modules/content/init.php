<?php

// Route List
Route::set('contentedit', 'content/edit(/<main>(/<table>))')
	->defaults(array(
		'controller' => 'content',
		'action'     => 'edit',
	));

Route::set('contentupdate', 'content/update(/<main>(/<table>))')
	->defaults(array(
		'controller' => 'content',
		'action'     => 'update',
	));
// Route search
Route::set('organisasi_search', 'content/organisasi(/<page>)')
	->defaults(array(
		'controller' => 'Content',
		'action'     => 'organisasi',
	));