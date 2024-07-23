<?php defined('SYSPATH') OR die('No direct script access.'); ?>

2021-04-12 10:05:18 --- CRITICAL: ErrorException [ 8 ]: Undefined index: category ~ MODPATH\magazine\classes\Model\Magazine.php [ 250 ] in C:\xampp\htdocs\content.bmc.or.id\modules\magazine\classes\Model\Magazine.php:250
2021-04-12 10:05:18 --- DEBUG: #0 C:\xampp\htdocs\content.bmc.or.id\modules\magazine\classes\Model\Magazine.php(250): Kohana_Core::error_handler(8, 'Undefined index...', 'C:\\xampp\\htdocs...', 250, Array)
#1 C:\xampp\htdocs\content.bmc.or.id\modules\magazine\classes\Controller\Magazine.php(531): Model_Magazine->save_magazine(Array, '1')
#2 C:\xampp\htdocs\content.bmc.or.id\system\classes\Kohana\Controller.php(84): Controller_Magazine->action_save()
#3 [internal function]: Kohana_Controller->execute()
#4 C:\xampp\htdocs\content.bmc.or.id\system\classes\Kohana\Request\Client\Internal.php(97): ReflectionMethod->invoke(Object(Controller_Magazine))
#5 C:\xampp\htdocs\content.bmc.or.id\system\classes\Kohana\Request\Client.php(114): Kohana_Request_Client_Internal->execute_request(Object(Request), Object(Response))
#6 C:\xampp\htdocs\content.bmc.or.id\system\classes\Kohana\Request.php(993): Kohana_Request_Client->execute(Object(Request))
#7 C:\xampp\htdocs\content.bmc.or.id\index.php(119): Kohana_Request->execute()
#8 {main} in C:\xampp\htdocs\content.bmc.or.id\modules\magazine\classes\Model\Magazine.php:250