<?php

class Vivere_Store_IndexController extends Mage_Core_Controller_Front_Action
{

    public function indexAction()
    {
        Mage::unregister('storedat');
        //$ip  = !empty($_SERVER['HTTP_X_FORWARDED_FOR']) ? $_SERVER['HTTP_X_FORWARDED_FOR'] : $_SERVER['REMOTE_ADDR'];
        $ip = '111.94.78.91';
        $url = "http://freegeoip.net/json/".$ip;
        $ch  = curl_init();

        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 300);
        $data = curl_exec($ch);
        curl_close($ch);

        if ($data) {
            $location = json_decode($data);

            $lat = $location->latitude;
            $lon = $location->longitude;
        }

        #DB Query
        $resource = Mage::getSingleton('core/resource');
        $readCon = $resource->getConnection('core_read');

        $stores = $readCon->fetchAll('SELECT address,lon,lat,name,img, ( 6371 * acos( cos(radians('.$lat.')) * cos(radians(lat)) * cos(radians(lon) - radians('.$lon.')) + sin(radians('.$lat.')) * sin(radians(lat))) ) AS distance FROM vivere_store_location HAVING distance < 15 ORDER BY distance LIMIT 1');
        
        $data = $readCon->fetchAll('SELECT * from vivere_store_location');

        # Assign data
        Mage::register('storedat',$stores);
        Mage::register('otherdat',$data);

        $this->loadLayout();

        $block = $this->getLayout()->getBlock('store');

        # Set page title
        $pageTitle = $this->__('Vivere Store Locator Function');
        $this->getLayout()->getBlock('head')->setTitle($pageTitle);

        $this->getLayout()->getBlock('root')->setTemplate('page/1column.phtml');

        $this->renderLayout();

    }
}
