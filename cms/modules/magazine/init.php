<?php

// Route delete
Route::set('magazine_child', 'magazine/child(/<parent_id>)')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'child',
	));

// Route delete
Route::set('magazine_delete', 'magazine/delete(/<id>)')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'delete',
	));
	
// Route detail
Route::set('magazine_detail', 'magazine/detail(/<id>)')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'detail',
	));

// Route edit
Route::set('magazine_edit', 'magazine/edit(/<id>)')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'edit',
	));
	
// Route approved
Route::set('magazine_approved', 'magazine/approve/submit')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'approvesubmit',
	));
	
// Route approve detail
Route::set('magazine_approve', 'magazine/approve(/<id>)')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'approve',
	));

// Route index
Route::set('magazine_index', 'magazine/index(/<page>)')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'index',
	));
	
// Route list approve
Route::set('magazine_list_approve', 'magazine/listapprove(/<page>)')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'listapprove',
	));
	
// Route new
Route::set('magazine_new', 'magazine/new')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'new',
	));
	
// Route Save
Route::set('magazine_save', 'magazine/save')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'save',
	));

// Route search
Route::set('magazine_search', 'magazine/search(/<page>)')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'search',
	));
	
// Route Update
Route::set('magazine_update', 'magazine/update')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'update',
	));
	
// Route Insert Video
Route::set('magazine_insertvideo', 'magazine/insertvideo')
	->defaults(array(
		'controller' => 'Magazine',
		'action'     => 'insertvideo',
	));