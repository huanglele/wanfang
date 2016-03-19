ALTER TABLE  `wf_vip_dingdan` CHANGE  `vip_price`  `vip_price` DECIMAL( 10, 2 ) NOT NULL COMMENT  '订单价钱'

ALTER TABLE  `wf_jms_dingdan` CHANGE  `jms_price`  `jms_price` DECIMAL( 10, 2 ) NOT NULL COMMENT  '订单价钱'

ALTER TABLE  `wf_jms_user` ADD `jms_wx_openid` CHAR( 28 ) NOT NULL AFTER `jms_photo`

ALTER TABLE  `wf_vip_dingdan` CHANGE  `vip_pid`  `vip_pid` bigint(20) NOT NULL 

ALTER TABLE  `wf_vip_user` ADD  `jms_wx_openid` CHAR( 28 ) NOT NULL AFTER  `vip_shopping`
ALTER TABLE  `wf_vip_user` ADD  `jms_qq_openid` CHAR( 28 ) NOT NULL AFTER  `jms_wx_openid`

