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

class K2StoreControllerReportPlugin extends K2StoreController {

	// the same as the plugin's one!
	var $_element = '';

	/**
	 * constructor
	 */
	function __construct()
	{
		parent::__construct();
	}

	/**
	 * Overrides the getView method, adding the plugin's layout path
	 */
	public function getView( $name = '', $type = '', $prefix = '', $config = array() ){
    	$view = parent::getView( $name, $type, $prefix, $config );
    	$view->addTemplatePath(JPATH_SITE.'/plugins/k2store/'.$this->_element.'/'.$this->_element.'/tmpl/');
    	return $view;
    }

    /**
     * Overrides the delete method, to include the custom models and tables.
     */
    public function delete()
    {
    	$this->includeCustomModel('ShippingRates');
    	$this->includeCustomTables();
    	parent::delete();
    }

    protected function includeCustomTables(){
   		// Include the custom table
    	$dispatcher = JDispatcher::getInstance();
		$dispatcher->trigger('includeCustomTables', array() );
    }

    protected function includeCustomModel( $name ){
    	$dispatcher = JDispatcher::getInstance();
		$dispatcher->trigger('includeCustomModel', array($name, $this->_element) );
    }

    protected function includeK2StoreModel( $name ){
    	$dispatcher = JDispatcher::getInstance();
		$dispatcher->trigger('includeK2StoreModel', array($name) );
    }

    protected function baseLink(){
    	$id = JFactory::getApplication()->input->getInt('id', '');
    	return "index.php?option=com_k2store&view=report&task=view&id={$id}";
    }
}
