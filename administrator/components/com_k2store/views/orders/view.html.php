<?php
/*------------------------------------------------------------------------
# com_k2store - K2 Store
# ------------------------------------------------------------------------
# author    Ramesh Elamathi - Weblogicx India http://www.weblogicxindia.com
# copyright Copyright (C) 2012 Weblogicxindia.com. All Rights Reserved.
# @license - http://www.gnu.org/licenses/gpl-2.0.html GNU/GPL
# Websites: http://k2store.org
# Technical Support:  Forum - http://k2store.org/forum/index.html
-------------------------------------------------------------------------*/


// no direct access
defined('_JEXEC') or die('Restricted access');

jimport('joomla.application.component.view');


class K2StoreViewOrders extends K2StoreView
{

	function display($tpl = null) {

		require_once (JPATH_ADMINISTRATOR.DS.'components'.DS.'com_k2store'.DS.'library'.DS.'prices.php');
		$mainframe = JFactory::getApplication();
		$option = 'com_k2store';
		$ns = $option.'.orders';

		$db		=JFactory::getDBO();
		$uri	=JFactory::getURI();

		$filter_order		= $mainframe->getUserStateFromRequest( $ns.'filter_order',		'filter_order',		'a.id',	'cmd' );
		$filter_order_Dir	= $mainframe->getUserStateFromRequest( $ns.'filter_order_Dir',	'filter_order_Dir',	'',				'word' );
		$filter_orderstate	= $mainframe->getUserStateFromRequest( $ns.'filter_orderstate',	'filter_orderstate',	'', 'string' );


		$search				= $mainframe->getUserStateFromRequest( $ns.'search',			'search',			'',				'string' );
		if (strpos($search, '"') !== false) {
			$search = str_replace(array('=', '<'), '', $search);
		}
		$search = JString::strtolower($search);

		// Get data from the model
		$items		= $this->get( 'Data');
		$total		= $this->get( 'Total');
		$pagination = $this->get( 'Pagination' );

		$javascript 	= 'onchange="document.adminForm.submit();"';

		require_once(JPATH_ADMINISTRATOR.'/components/com_k2store/models/orderstatuses.php');
		$os_model = new K2StoreModelOrderstatuses();
		$statuses = $os_model->getOrderStatuses();
		$filter_orderstate_options[]= JHTML::_('select.option', 0, JText::_('K2STORE_ORDER_SELECT_STATE'));
		foreach($statuses as $status) {
		//order state filter
			$filter_orderstate_options[] = JHTML::_('select.option', $status->orderstatus_id, JText::_($status->orderstatus_name));
		}
		$lists['orderstate'] = JHTML::_('select.genericlist', $filter_orderstate_options, 'filter_orderstate', $javascript, 'value', 'text', $filter_orderstate);


		// table ordering
		$lists['order_Dir'] = $filter_order_Dir;
		$lists['order'] = $filter_order;

		// search filter
		$lists['search']= $search;

		$this->assignRef('lists',		$lists);
		$this->assignRef('items',		$items);
		$this->assignRef('pagination',	$pagination);

		//$model = $this->getModel();

		$params = JComponentHelper::getParams('com_k2store');
		$this->assignRef('params',	$params);

		$this->addToolBar();
		$toolbar = new K2StoreToolBar();
        $toolbar->renderLinkbar();

		parent::display($tpl);
	}

	function addToolBar() {
		JToolBarHelper::title(JText::_('K2STORE_ORDERS'),'k2store-logo');
		JToolBarHelper::deleteList();

	}

}
