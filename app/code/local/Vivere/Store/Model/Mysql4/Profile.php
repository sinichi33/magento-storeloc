<?php

class Vivere_Store_Model_Mysql4_Location
extends Mage_Core_Model_Mysql4_Abstract
{
    protected function _construct()
    {
        $this->_init('store/location', 'id');
    }
}
