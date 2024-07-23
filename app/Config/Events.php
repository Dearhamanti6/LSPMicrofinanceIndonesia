<?php

namespace Config;

use CodeIgniter\Events\Events;

/*
 * --------------------------------------------------------------------
 * Application Events
 * --------------------------------------------------------------------
 * Events allow you to tap into the execution of the program without
 * modifying or extending core files. This file provides a central
 * location to define your events, though they can always be added
 * at run-time, also, if needed.
 *
 * You create code that can execute by subscribing to events with
 * the 'on()' method. This accepts any form of callable, including
 * Closures, that will be executed when the event is triggered.
 *
 * Example:
 *      Events::on('create', [$myInstance, 'myMethod']);
 */

Events::on('pre_system', function () {
	Events::on('session:create', function ($sessionId, $data) {
		// Log session creation events
		log_message('debug', 'Session created: ' . $sessionId);
	});

	Events::on('session:destroy', function ($sessionId) {
		// Log session destruction events
		log_message('debug', 'Session destroyed: ' . $sessionId);
	});

	Events::on('session:error', function ($sessionId, $errorMessage) {
		// Log session errors
		log_message('error', 'Session error (' . $sessionId . '): ' . $errorMessage);
	});

	if (ENVIRONMENT !== 'testing') {
		while (\ob_get_level() > 0) {
			\ob_end_flush();
		}

		\ob_start(function ($buffer) {
			return $buffer;
		});
	}

	/*
	 * --------------------------------------------------------------------
	 * Debug Toolbar Listeners.
	 * --------------------------------------------------------------------
	 * If you delete, they will no longer be collected.
	 */
	if (ENVIRONMENT !== 'production') {
		Events::on('DBQuery', 'CodeIgniter\Debug\Toolbar\Collectors\Database::collect');
		Services::toolbar()->respond();
	}
});
