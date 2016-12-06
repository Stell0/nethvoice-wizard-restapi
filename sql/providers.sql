USE asterisk;
DROP TABLE IF EXISTS `providers`;
CREATE TABLE `providers` (
  `provider` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(100) NOT NULL DEFAULT '',
  `dettpeer` mediumtext NOT NULL,
  `dettuser` varchar(250) DEFAULT NULL,
  `registration` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `providers` WRITE;
INSERT IGNORE INTO `providers` (`provider`, `description`, `dettpeer`, `dettuser`, `registration`) VALUES ('eutelia','Eutelia','disallow=all\nallow=CODECS\nbindaddr=0.0.0.0\ncanreinvite=yes\ndefaultexpirey=330\ndtmfmode=rfc2833\nfromuser=USERNAME\nhost=voip.eutelia.it\ninsecure=very\nnat=yes\nport=5060\nqualify=yes\nrealm=voip.eutelia.it\nsecret=PASSWORD\nsrvlookup=yes\ntype=friend\nuseragent=Asterisk_Eut\nusername=USERNAME','allow=CODECS\ncontext=from-pstn\nsecret=PASSWORD\ntype=user','USERNAME:PASSWORD@voip.eutelia.it/NUMERO');
INSERT IGNORE INTO `providers` (`provider`, `description`, `dettpeer`, `dettuser`, `registration`) VALUES ('messagenet','MessageNet','disallow=all\nallow=CODECS\nbindaddr=0.0.0.0\ncanreinvite=yes\ndefaultexpirey=330\ndtmfmode=rfc2833\nfromuser=USERNAME\nhost=sip.messagenet.it\ninsecure=very\nnat=yes\nport=5060\nqualify=yes\nrealm=sip.messagenet.it\nsecret=PASSWORD\nsrvlookup=yes\ntype=friend\nusername=USERNAME','allow=CODECS\ncontext=from-pstn\nsecret=PASSWORD\ntype=user','USERNAME:PASSWORD@sip.messagenet.it/NUMERO');
INSERT IGNORE INTO `providers` (`provider`, `description`, `dettpeer`, `dettuser`, `registration`) VALUES ('squillo','Squillo.it (NGI)','disallow=all\nallow=CODECS\nbindaddr=0.0.0.0\ncanreinvite=yes\ndefaultexpirey=330\ndtmfmode=rfc2833\nfromuser=USERNAME\nhost=sip.squillo.it\ninsecure=very\nnat=yes\nport=5060\nqualify=yes\nrealm=sip.squillo.it\nsecret=PASSWORD\nsrvlookup=yes\ntype=friend\nusername=USERNAME','allow=CODECS\ncontext=from-pstn\nsecret=PASSWORD\ntype=user','USERNAME:PASSWORD@sip.squillo.it/NUMERO');
INSERT IGNORE INTO `providers` (`provider`, `description`, `dettpeer`, `dettuser`, `registration`) VALUES ('skype','Skype Connect','disallow=all\nallow=CODECS\nbindaddr=0.0.0.0\ncanreinvite=yes\ndefaultexpirey=330\ndtmfmode=rfc2833\nfromuser=USERNAME\nhost=sip.skype.com\ninsecure=very\nnat=yes\nport=5060\nqualify=yes\nrealm=sip.skype.com\nsecret=PASSWORD\nsrvlookup=yes\ntype=friend\nusername=USERNAME','allow=CODECS\ncontext=from-pstn\nsecret=PASSWORD\ntype=user','USERNAME:PASSWORD@sip.skype.com/NUMERO');
INSERT IGNORE INTO `providers` (`provider`, `description`, `dettpeer`, `dettuser`, `registration`) VALUES ('voipvoice','VoipVoice','disallow=all\nallow=CODECS\nbindaddr=0.0.0.0\ndefaultexpirey=330\ndtmfmode=rfc2833\nfromuser=USERNAME\nhost=link.voipvoice.it\ninsecure=very\nnat=yes\nport=5060\nqualify=yes\nrealm=link.voipvoice.it\nsecret=PASSWORD\nsrvlookup=yes\ntype=friend\nuseragent=Asterisk_Eut\nusername=USERNAME','allow=CODECS\ncontext=from-pstn\nsecret=PASSWORD\ntype=user','USERNAME:PASSWORD@link.voipvoice.it/NUMERO');
INSERT IGNORE INTO `providers` (`provider`, `description`, `dettpeer`, `dettuser`, `registration`) VALUES ('enjoip','Enjoip','disallow=all\nallow=CODECS\ndtmfmode=rfc2833\nfromdomain=voce.enjoip.eu\nhost=voce.enjoip.eu\nqualify=yes\nsecret=PASSWORD\ntype=friend\nnat=yes\nusername=USERNAME\ncanreinvite=no\ncontext=from-pstn\nsendrpid=no\ninsecure=port,invite','allow=CODECS\ncontext=from-pstn\nsecret=PASSWORD\ntype=user','USERNAME:PASSWORD@voce.enjoip.eu/NUMERO');
INSERT IGNORE INTO `providers` (`provider`, `description`, `dettpeer`, `dettuser`, `registration`) VALUES ('cheapnet','Cheapnet','disallow=all\nallow=CODECS\ndtmfmode=rfc2833\nfromdomain=sip.cheapnet.it\nhost=sip.cheapnet.it\nqualify=yes\nsecret=PASSWORD\ntype=friend\nnat=yes\nusername=USERNAME\ncanreinvite=no\ncontext=from-pstn\nsendrpid=no\ninsecure=port,invite','allow=CODECS\ncontext=from-pstn\nsecret=PASSWORD\ntype=user','USERNAME:PASSWORD@sip.cheapnet.it/NUMERO');
UNLOCK TABLES;