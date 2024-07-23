<?php

// Route delete
Route::set('converence_child', 'converence/child(/<parent_id>)')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'child',
	));

// Route delete
Route::set('converence_delete', 'converence/delete(/<id>)')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'delete',
	));
	
// Route detail
Route::set('converence_detail', 'converence/detail(/<id>)')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'detail',
	));

// Route edit
Route::set('converence_edit', 'converence/edit(/<id>)')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'edit',
	));
	
// Route approved
Route::set('converence_approved', 'converence/approve/submit')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'approvesubmit',
	));
	
// Route approve detail
Route::set('converence_approve', 'converence/approve(/<id>)')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'approve',
	));

// Route index
Route::set('converence_index', 'converence/index(/<page>)')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'index',
	));
	
// Route list approve
Route::set('converence_list_approve', 'converence/listapprove(/<page>)')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'listapprove',
	));
	
// Route new
Route::set('converence_new', 'converence/new')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'new',
	));
	
// Route Save
Route::set('converence_save', 'converence/save')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'save',
	));

// Route search
Route::set('converence_search', 'converence/search(/<page>)')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'search',
	));
	
// Route Update
Route::set('converence_update', 'converence/update')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'update',
	));
	
// Route Insert Video
Route::set('converence_insertvideo', 'converence/insertvideo')
	->defaults(array(
		'controller' => 'Converence',
		'action'     => 'insertvideo',
	));