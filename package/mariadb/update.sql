update prestashop.ps_configuration set value='172.18.0.2' where name in ('PS_SHOP_DOMAIN','PS_SHOP_DOMAIN_SSL');
update prestashop.ps_shop_url set domain = '192.168.10.8:8083' where id_shop_url=1;
update prestashop.ps_shop_url set domain_ssl = '192.168.10.8:8083' where id_shop_url=1;
update prestashop.ps_shop_url set physical_uri = '/' where id_shop_url=1;
