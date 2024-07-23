<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php')) {
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/**
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');

// Custom Route
$routes->get('/events/article/detail/(:num)/(:any)', 'Events::article_detail/$1/$2');
$routes->get('/events/converence/detail/(:num)/(:any)', 'Events::converence_detail/$1/$2');
$routes->get('/events/video/detail/(:num)/(:any)', 'Events::video_detail/$1/$2');
$routes->get('/tempat_uji_kompetensi', 'TempatUjiController::index');
$routes->get('/pemegang_sertifikat', 'PemegangSertifikatController::index');
$routes->get('/asesor_kompetensi', 'AsesorKompetensiController::index');
$routes->get('/manage_suer', 'Manage_user::index');
$routes->get('/manage_user/countUserAdmin3', 'Manage_user::countUserAdmin3');



/**
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need to it be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
