<?php

$installer = $this;
$installer->startSetup();

$installer->run("
    CREATE TABLE `vivere_store_location` (
        `id` int(11) unsigned NOT NULL auto_increment,
        `name` varchar(100) NULL,
        `address` varchar(254) NULL,
        `img` varchar(50) NULL,
        `lat` varchar(100) NULL,
        `lon` varchar(100) NULL,
        PRIMARY KEY (`id`)
    ) ENGINE = InnoDB DEFAULT CHARSET = utf8;
");

$installer->endSetup();
