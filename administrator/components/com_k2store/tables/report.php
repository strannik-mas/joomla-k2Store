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
defined( '_JEXEC' ) or die( 'Restricted access' );

class TableReport extends JTable
{

	public function __construct( $db=null, $tbl_name=null, $tbl_key=null )
	{
		    $tbl_key 	= 'extension_id';
	        $tbl_suffix = 'extensions';
	    $this->set( '_suffix', 'report' );

	    if (empty($db)) {
	        $db = JFactory::getDBO();
	    }

		parent::__construct( "#__{$tbl_suffix}", $tbl_key, $db );
	}

	public function getName( $item=null )
	{
	    if (!empty($item) && is_numeric($item)) {
	        $this->load( $item );
	    } elseif (is_object($item) || is_array($item)) {
	        $this->bind($item);
	    }

	    $params = $this->params;
	    if ($params->get('label')) {
	        return $params->get('label');
	    }

	    return $this->name;
	}
}