CREATE TABLE `afup_forum_tarif` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `technical_name` varchar(64) NOT NULL,
  `pretty_name` varchar(255) NOT NULL,
  `public` tinyint(1) unsigned NOT NULL,
  `members_only` tinyint(1) unsigned NOT NULL,
  `default_price` float NOT NULL,
  `active` tinyint(1) NOT NULL,
  `day` set('one','two') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

INSERT INTO `afup_forum_tarif` (`id`, `technical_name`, `pretty_name`, `public`, `members_only`, `default_price`, `active`, `day`) VALUES
  (99,	'AFUP_FORUM_PREMIERE_JOURNEE',	'Première journée',	1,	0,	150,	1,	'one'),
  (1,	'AFUP_FORUM_DEUXIEME_JOURNEE',	'Deuxième journée',	1,	0,	150,	1,	'two'),
  (2,	'AFUP_FORUM_2_JOURNEES',	'2 Jours',	1,	0,	250,	1,	'one,two'),
  (3,	'AFUP_FORUM_2_JOURNEES_AFUP',	'2 Jours AFUP',	1,	1,	150,	1,	'one,two'),
  (4,	'AFUP_FORUM_2_JOURNEES_ETUDIANT',	'2 Jours étudiant',	0,	0,	150,	1,	'one,two'),
  (5,	'AFUP_FORUM_2_JOURNEES_PREVENTE',	'2 Jours prévente',	0,	0,	150,	1,	'one,two'),
  (6,	'AFUP_FORUM_2_JOURNEES_AFUP_PREVENTE',	'2 Jours prévente AFUP',	0,	1,	150,	0,	'one,two'),
  (7,	'AFUP_FORUM_2_JOURNEES_ETUDIANT_PREVENTE',	'2 Jours étudiant prévente',	0,	0,	150,	0,	'one,two'),
  (8,	'AFUP_FORUM_2_JOURNEES_COUPON',	'2 jours coupon',	0,	0,	200,	0,	'one,two'),
  (9,	'AFUP_FORUM_ORGANISATION',	'Organisation',	0,	0,	0,	1,	'one,two'),
  (10,	'AFUP_FORUM_SPONSOR',	'Sponsor',	0,	0,	0,	1,	'one,two'),
  (11,	'AFUP_FORUM_PRESSE',	'Presse',	0,	0,	0,	1,	'one,two'),
  (12,	'AFUP_FORUM_CONFERENCIER',	'Conférencier',	0,	0,	0,	1,	'one,two'),
  (13,	'AFUP_FORUM_INVITATION',	'Invitation',	0,	0,	0,	1,	'one,two'),
  (14,	'AFUP_FORUM_PROJET',	'Projet PHP',	0,	0,	0,	1,	'one,two'),
  (15,	'AFUP_FORUM_2_JOURNEES_SPONSOR',	'2 Jours par sponsor',	0,	0,	200,	1,	'one,two'),
  (16,	'AFUP_FORUM_PROF',	'Enseignement supérieur',	0,	0,	0,	1,	'one,two'),
  (17,	'AFUP_FORUM_PREMIERE_JOURNEE_ETUDIANT_PREVENTE',	'',	0,	0,	100,	0,	'one'),
  (18,	'AFUP_FORUM_DEUXIEME_JOURNEE_ETUDIANT_PREVENTE',	'',	0,	0,	100,	0,	'two'),
  (19,	'AFUP_FORUM_2_JOURNEES_PREVENTE_ADHESION',	'',	0,	0,	150,	0,	'one,two'),
  (20,	'AFUP_FORUM_PREMIERE_JOURNEE_AFUP',	'Jour 1 AFUP',	0,	1,	100,	0,	'one'),
  (21,	'AFUP_FORUM_DEUXIEME_JOURNEE_AFUP',	'Jour 2 AFUP',	0,	1,	100,	0,	'two'),
  (22,	'AFUP_FORUM_PREMIERE_JOURNEE_ETUDIANT',	'Jour 1 Etudiant',	0,	0,	100,	0,	'one'),
  (23,	'AFUP_FORUM_DEUXIEME_JOURNEE_ETUDIANT',	'Jour 2 Etudiant',	0,	0,	100,	0,	'two'),
  (100,	'EARLY_BIRD',	'Early bird - 2 jours',	1,	0,	250,	1,	'one,two'),
  (101,	'EARLY_BIRD_AFUP',	'Early bird - 2 jours - AFUP',	1,	1,	150,	1,	'one,two'),
  (102,	'LATE_BIRD',	'Late bird - 2 jours',	1,	0,	325,	1,	'one,two'),
  (103,	'LATE_BIRD_AFUP',	'Late bird - 2 jours - AFUP',	1,	1,	225,	1,	'one,two'),
  (105,	'LATE_BIRD_PREMIERE_JOURNEE',	'Late bird - Première journée',	1,	0,	225,	1,	'one'),
  (106,	'LATE_BIRD_DEUXIEME_JOURNEE',	'Late bird - Deuxième journée',	1,	0,	225,	1,	'two')
;

UPDATE afup_forum_tarif SET id=0 WHERE id=99;

CREATE TABLE `afup_forum_tarif_event` (
  `id_tarif` int(10) unsigned NOT NULL,
  `id_event` int(10) unsigned NOT NULL,
  `price` float DEFAULT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tarif`,`id_event`),
  KEY `id_event` (`id_event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `afup_forum_tarif_event` (`id_tarif`, `id_event`, `price`, `date_start`, `date_end`, `description`) VALUES
  (0,	17,	175,	'2017-06-12 19:47:02',	'2017-09-17 23:59:59',	'Journée du jeudi 26 octobre'),
  (1,	17,	175,	'2017-06-12 19:47:02',	'2017-09-17 23:59:59',	'Journée du vendredi 27 octobre'),
  (2,	17,	275,	'2017-06-12 19:47:02',	'2017-09-17 23:59:59',	'2 Jours'),
  (3,	17,	175,	'2017-06-12 19:47:02',	'2017-09-17 23:59:59',	'2 Jours - AFUP'),
  (100,	17,	250,	'2017-06-12 19:47:02',	'2017-07-02 23:59:59',	'2 Jours'),
  (101,	17,	150,	'2017-06-12 19:47:02',	'2017-07-02 23:59:59',	'2 Jours - AFUP'),
  (102,	17,	325,	'2017-06-12 19:47:02',	'2017-10-15 23:59:59',	'2 Jours - Dernière minute'),
  (103,	17,	225,	'2017-06-12 19:47:02',	'2017-10-15 23:59:59',	'2 Jours - Dernière minute - AFUP'),
  (105,	17,	225,	'2017-06-12 19:47:02',	'2017-10-15 23:59:59',	'Journée du jeudi 26 octobre - Dernière minute'),
  (106,	17,	225,	'2017-06-12 19:47:02',	'2017-10-15 23:59:59',	'Journée du vendredi 27 octobre - Dernière minute')
;
