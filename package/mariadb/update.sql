update prestashop.ps_configuration set value='172.18.0.2' where name in ('PS_SHOP_DOMAIN','PS_SHOP_DOMAIN_SSL');
update prestashop.ps_shop_url set domain = 'localhost:8083' where id_shop_url=1;
update prestashop.ps_shop_url set domain_ssl = 'localhost:8083' where id_shop_url=1;
update prestashop.ps_shop_url set physical_uri = '/' where id_shop_url=1;
