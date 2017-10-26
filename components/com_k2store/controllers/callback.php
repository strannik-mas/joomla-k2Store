<?php
/*------------------------------------------------------------------------
# com_k2store - K2Store
# ------------------------------------------------------------------------
# author    Ramesh Elamathi - Weblogicx India http://www.weblogicxindia.com
# copyright Copyright (C) 2014 - 19 Weblogicxindia.com. All Rights Reserved.
# @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Websites: http://k2store.org
# Technical Support:  Forum - http://k2store.org/forum/index.html
-------------------------------------------------------------------------*/


/** ensure this file is being included by a parent file */
defined('_JEXEC') or die('Restricted access');
require_once(JPATH_SITE.'/components/com_k2store/controllers/controller.php');
class K2StoreControllerCallback extends K2StoreController
{

	function __construct() {
		$this->read();
	}

	function read() {
		// Makes sure SiteGround's SuperCache doesn't cache the subscription page
		$app = JFactory::getApplication();
		$app->setHeader('X-Cache-Control', 'False', true);
		$method = $app->input->getCmd('method', 'none');
		require_once (JPATH_SITE.'/components/com_k2store/models/callback.php');
		$model = new K2StoreModelCallback();
		$result = $model->runCallback($method);
		echo $result ? 'OK' : 'FAILED';
		$app->close();
	}
}
