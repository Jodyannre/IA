
% ---------------------------------- Otros -----------------------------------

cls :- write('\33\[2J').

esperar :-
    read(Enter),
    (Enter == 0 -> true ; esperar).

confirmar :-
    write('Confirmar información (si/no)'),
    read(Confirmar),
    (Confirmar=='si',true;Confirmar=='no',false).

% ---------------------------------- Hechos ----------------------------------

% Hechos de departamentos
departamento(1,'Peten',8,'espanol','tropical',600).
departamento(2,'Izabal',5,'espanol','calor',200).
departamento(3,'Alta Verapaz',6,'espanol','frio',300).
departamento(4,'Quiche',5,'katchikel','frio',400).
departamento(5,'Huehuetenango',7,'espanol','frio',500).
departamento(6,'Escuintla',2,'espanol','calor',50).
departamento(7,'San Marcos',3,'ingles','calor',400).
departamento(8,'Jutiapa',4,'katchikel','calor',100).
departamento(9,'Baja Verapaz',5,'ingles','templado',200).
departamento(10,'Santa Rosa',4,'ingles','calor',100).
departamento(11,'Zacapa',3,'ingles','calor',100).
departamento(12,'Suchitepequez',5,'espanol','templado',50).
departamento(13,'Chiquimula',4,'katchikel','calor',300).
departamento(14,'Guatemala',0,'ingles','templado',10).
departamento(15,'Jalapa',4,'ingles','calor',100).
departamento(16,'Chimaltenango',3,'katchikel','calor',100).
departamento(17,'Quetzaltenango',3,'ingles','frio',300).
departamento(18,'El Progreso',4,'katchikel','calor',150).
departamento(19,'Retalhuleu',4,'ingles','calor',200).
departamento(20,'Solola',6,'Ketchi','frio',200).
departamento(21,'Totonicapan',5,'ingles','templado',200).
departamento(22,'Sacatepequez',2,'espanol','templado',100).

% Hechos de trabajadores

trabajador(1,'Jose Hernandez','Chef',1).
trabajador(2,'Maria Loarca','Mesera',1).
trabajador(3,'Julio Ortega','Administrador',1).
trabajador(4,'Jorge Po','Recepcionista',1).
trabajador(5,'Paul Coc','Oficinista',1).
trabajador(6,'Enrique','Oficinista',1).
trabajador(7,'Lorena','Oficinista',1).
trabajador(8,'Mario','Oficinista',1).
trabajador(9,'Pablo','Limpieza',1).
trabajador(10,'Yoli','Cocinera',1).
trabajador(11,'Marionelo','Administrador',2).
trabajador(12,'House','Cocinera',2).
trabajador(13,'paco','recepcionista',2).
trabajador(14,'Francisco','Mesero',2).
trabajador(15,'Gustavo','Oficinista',2).
trabajador(16,'Paul','Oficinista',2).
trabajador(17,'Jorge','Oficinista',2).
trabajador(18,'Tatiana','Oficinista',2).
trabajador(19,'Raul','Oficinista',2).
trabajador(20,'Laura','Ofinista',2).
trabajador(21,'Carlos','Administrador',3).
trabajador(22,'Luis','Limpieza',3).
trabajador(23,'Mario','Oficinista',3).
trabajador(24,'Alejandro','Oficinista',3).
trabajador(25,'Edwin','Oficinista',3).
trabajador(26,'Esvin','Ofinista',3).
trabajador(27,'Quelvin','Encargado',3).
trabajador(28,'Mariela','Oficinista',3).
trabajador(29,'Mariana','Oficinista',3).
trabajador(30,'Holer','Oficinista',3).
trabajador(31,'Jose','Administrador',4).
trabajador(32,'Poncio','Oficinista',4).
trabajador(33,'Gerber','Oficinista',4).
trabajador(34,'Rolando','Oficinista',4).
trabajador(35,'Keila','Oficinista',4).
trabajador(36,'Keithlyn','Oficinista',4).
trabajador(37,'William','Oficinista',4).
trabajador(38,'Iliana','Oficinista',4).
trabajador(39,'Manuel','Oficinista',4).
trabajador(40,'Byron','Oficinista',4).
trabajador(41,'Victor','Administrador',5).
trabajador(42,'Carolina','Oficinista',5).
trabajador(43,'Karen','Oficinista',5).
trabajador(44,'Xara','Oficinista',5).
trabajador(45,'Zoila','Oficinista',5).
trabajador(46,'Francisco','Oficinista',5).
trabajador(47,'Romario','Oficinista',5).
trabajador(48,'Olga','Oficinista',5).
trabajador(49,'Saulo','Oficinista',5).
trabajador(50,'Norlin','Oficinista',5).
trabajador(51,'Yulisa','Propietaria',6).
trabajador(52,'Luis','Auxiliar',6).
trabajador(53,'Pedro','Limpieza',6).
trabajador(54,'Hitler','Auxiliar',6).
trabajador(55,'Mario','Auxiliar',6).
trabajador(56,'Victoria','Oficinista',6).
trabajador(57,'Ugolino','Encargado',6).
trabajador(58,'Julio','Auxiliar',6).
trabajador(59,'Tavo','Auxiliar',6).
trabajador(60,'Britani','Auxiliar',6).
trabajador(61,'Carlos','Administrador',7).
trabajador(62,'Olga','Auxiliar',7).
trabajador(63,'Sapon','Auxiliar',7).
trabajador(64,'Erlin','Auxiliar',7).
trabajador(65,'Woly','Auxiliar',7).
trabajador(66,'Hilario','Auxiliar',7).
trabajador(67,'Manuela','Auxiliar',7).
trabajador(68,'Quax','Auxiliar',7).
trabajador(69,'Claudia','Auxiliar',7).
trabajador(70,'Ramiro','Auxiliar',7).
trabajador(71,'Isaac','Propietario',8).
trabajador(72,'Yesica','Auxiliar',8).
trabajador(73,'Kelia','Auxiliar',8).
trabajador(74,'Rox','Auxiliar',8).
trabajador(75,'Marling','Auxiliar',8).
trabajador(76,'Maggy','Limpieza',8).
trabajador(77,'Canahui','Auxiliar',8).
trabajador(78,'Monica','Auxiliar',8).
trabajador(79,'Jophef','Auxiliar',8).
trabajador(80,'Toti','Auxiliar',8).
trabajador(81,'Lara','Administrador',9).
trabajador(82,'Xica','Auxiliar',9).
trabajador(83,'Noly','Auxiliar',9).
trabajador(84,'Jorge','Auxiliar',9).
trabajador(85,'Beatriz','Auxiliar',9).
trabajador(86,'Raul','Auxiliar',9).
trabajador(87,'Picoro','Auxiliar',9).
trabajador(88,'Gertrudis','Auxiliar',9).
trabajador(89,'ulugrun','Auxiliar',9).
trabajador(90,'Brian','Auxiliar',9).
trabajador(91,'Wilson','Administrador',10).
trabajador(92,'Zika','Auxiliar',10).
trabajador(93,'Alejandro','Auxiliar',10).
trabajador(94,'Alex','Auxiliar',10).
trabajador(95,'Debora','Auxiliar',10).
trabajador(96,'Marcos','Auxiliar',10).
trabajador(97,'Ilsa','Auxiliar',10).
trabajador(98,'Olga','Auxiliar',10).
trabajador(99,'Jose Auxiliar','Auxiliar',10).
trabajador(100,'Frederic','Auxiliar',10).
trabajador(101,'Paola','Propietario',11).
trabajador(102,'Hugo','Auxiliar',11).
trabajador(103,'Leonel','Auxiliar',11).
trabajador(104,'Victoria','Auxiliar',11).
trabajador(105,'Gabriel','Auxiliar',11).
trabajador(106,'Keila','Auxiliar',11).
trabajador(107,'Carlos','Auxiliar',11).
trabajador(108,'Tampico','Auxiliar',11).
trabajador(109,'Pain','Auxiliar',11).
trabajador(110,'Laura','Auxiliar',11).
trabajador(111,'Daniela','Propietario',12).
trabajador(112,'Gerson','Auxiliar',12).
trabajador(113,'Wendy','Auxiliar',12).
trabajador(114,'Danny','Auxiliar',12).
trabajador(115,'Horacio','Auxiliar',12).
trabajador(116,'Mario','Auxiliar',12).
trabajador(117,'Orfa','Auxiliar',12).
trabajador(118,'Julio','Auxiliar',12).
trabajador(119,'Mario','Auxiliar',12).
trabajador(120,'Francisco','Auxiliar',12).
trabajador(121,'Gustavo','Encargado',13).
trabajador(122,'Dany','Auxiliar',13).
trabajador(123,'Byron','Auxiliar',13).
trabajador(124,'Tati','Auxiliar',13).
trabajador(125,'Gilma','Auxiliar',13).
trabajador(126,'Yessi','Auxiliar',13).
trabajador(127,'Maria','Auxiliar',13).
trabajador(128,'Jose','Auxiliar',13).
trabajador(129,'Jorge','Auxiliar',13).
trabajador(130,'Broilyn','Auxiliar',13).
trabajador(131,'Julio','Encargado',14).
trabajador(132,'Gary','Auxiliar',14).
trabajador(133,'Grouth','Auxiliar',14).
trabajador(134,'Keiht','Auxiliar',14).
trabajador(135,'Bross','Auxiliar',14).
trabajador(136,'Noty','Auxiliar',14).
trabajador(137,'Yorlin','Auxiliar',14).
trabajador(138,'Maryory','Auxiliar',14).
trabajador(139,'Astrid','Auxiliar',14).
trabajador(140,'Maryury','Auxiliar',14).
trabajador(141,'Enrique','Oficinista',15).
trabajador(142,'Lorena','Oficinista',15).
trabajador(143,'Mario','Oficinista',15).
trabajador(144,'Pablo','Limpieza',15).
trabajador(145,'Yoli','Cocinera',15).
trabajador(146,'Mario','Administrador',15).
trabajador(147,'House','Cocinera',15).
trabajador(148,'paco','recepcionista',15).
trabajador(149,'Francisco','Mesero',15).
trabajador(150,'Gustavo','Oficinista',15).
trabajador(151,'Paul','Oficinista',16).
trabajador(152,'Jorge','Oficinista',16).
trabajador(153,'Tatiana','Oficinista',16).
trabajador(154,'Raul','Oficinista',16).
trabajador(155,'Laura','Ofinista',16).
trabajador(156,'Carlos','Administrador',16).
trabajador(157,'Luis','Limpieza',16).
trabajador(158,'Mario','Oficinista',16).
trabajador(159,'Alejandro','Oficinista',16).
trabajador(160,'Edwin','Oficinista',16).
trabajador(161,'Esvin','Ofinista',17).
trabajador(162,'Quelvin','Encargado',17).
trabajador(163,'Mariela','Oficinista',17).
trabajador(164,'Mariana','Oficinista',17).
trabajador(165,'Holer','Oficinista',17).
trabajador(166,'Jose','Administrador',17).
trabajador(167,'Poncio','Oficinista',17).
trabajador(168,'Gerber','Oficinista',17).
trabajador(169,'Rolando','Oficinista',17).
trabajador(170,'Keila','Oficinista',17).
trabajador(171,'Keithlyn','Oficinista',18).
trabajador(172,'William','Oficinista',18).
trabajador(173,'Iliana','Oficinista',18).
trabajador(174,'Manuel','Oficinista',18).
trabajador(175,'Byron','Oficinista',18).
trabajador(176,'Victor','Administrador',18).
trabajador(177,'Carolina','Oficinista',18).
trabajador(178,'Karen','Oficinista',18).
trabajador(179,'Xara','Oficinista',18).
trabajador(180,'Zoila','Oficinista',18).
trabajador(181,'Francisco','Oficinista',19).
trabajador(182,'Romario','Oficinista',19).
trabajador(183,'Olga','Oficinista',19).
trabajador(184,'Saulo','Oficinista',19).
trabajador(185,'Norlin','Oficinista',19).
trabajador(186,'Yulisa','Propietaria',19).
trabajador(187,'Luis','Auxiliar',19).
trabajador(188,'Pedro','Limpieza',19).
trabajador(189,'Hitler','Auxiliar',19).
trabajador(190,'Mario','Auxiliar',19).
trabajador(191,'Victoria','Oficinista',20).
trabajador(192,'Ugolino','Encargado',20).
trabajador(193,'Julio','Auxiliar',20).
trabajador(194,'Tavo','Auxiliar',20).
trabajador(195,'Britani','Auxiliar',20).
trabajador(196,'Carlos','Administrador',20).
trabajador(197,'Olga','Auxiliar',20).
trabajador(198,'Sapon','Auxiliar',20).
trabajador(199,'Erlin','Auxiliar',20).
trabajador(200,'Woly','Auxiliar',20).
trabajador(201,'Hilario','Auxiliar',21).
trabajador(202,'Manuela','Auxiliar',21).
trabajador(203,'Quax','Auxiliar',21).
trabajador(204,'Claudia','Auxiliar',21).
trabajador(205,'Ramiro','Auxiliar',21).
trabajador(206,'Isaac','Propietario',21).
trabajador(207,'Yesica','Auxiliar',21).
trabajador(208,'Kelia','Auxiliar',21).
trabajador(209,'Rox','Auxiliar',21).
trabajador(210,'Marling','Auxiliar',21).
trabajador(211,'Maggy','Limpieza',22).
trabajador(212,'Canahui','Auxiliar',22).
trabajador(213,'Monica','Auxiliar',22).
trabajador(214,'Jophef','Auxiliar',22).
trabajador(215,'Toti','Auxiliar',22).
trabajador(216,'Lara','Administrador',22).
trabajador(217,'Xica','Auxiliar',22).
trabajador(218,'Noly','Auxiliar',22).
trabajador(219,'Jorge','Auxiliar',22).
trabajador(220,'Beatriz','Auxiliar',22).
trabajador(221,'Raul','Auxiliar',23).
trabajador(222,'Picoro','Auxiliar',23).
trabajador(223,'Gertrudis','Auxiliar',23).
trabajador(224,'ulugrun','Auxiliar',23).
trabajador(225,'Brian','Auxiliar',23).
trabajador(226,'Wilson','Administrador',23).
trabajador(227,'Zika','Auxiliar',23).
trabajador(228,'Alejandro','Auxiliar',23).
trabajador(229,'Alex','Auxiliar',23).
trabajador(230,'Debora','Auxiliar',23).
trabajador(231,'Marcos','Auxiliar',24).
trabajador(232,'Ilsa','Auxiliar',24).
trabajador(233,'Olga','Auxiliar',24).
trabajador(234,'Jose Auxiliar','Auxiliar',24).
trabajador(235,'Frederic','Auxiliar',24).
trabajador(236,'Paola','Propietario',24).
trabajador(237,'Hugo','Auxiliar',24).
trabajador(238,'Leonel','Auxiliar',24).
trabajador(239,'Victoria','Auxiliar',24).
trabajador(240,'Gabriel','Auxiliar',24).
trabajador(241,'Keila','Auxiliar',25).
trabajador(242,'Carlos','Auxiliar',25).
trabajador(243,'Tampico','Auxiliar',25).
trabajador(244,'Pain','Auxiliar',25).
trabajador(245,'Laura','Auxiliar',25).
trabajador(246,'Daniela','Propietario',25).
trabajador(247,'Gerson','Auxiliar',25).
trabajador(248,'Wendy','Auxiliar',25).
trabajador(249,'Danny','Auxiliar',25).
trabajador(250,'Horacio','Auxiliar',25).
trabajador(251,'Mario','Auxiliar',26).
trabajador(252,'Orfa','Auxiliar',26).
trabajador(253,'Julio','Auxiliar',26).
trabajador(254,'Mario','Auxiliar',26).
trabajador(255,'Francisco','Auxiliar',26).
trabajador(256,'Gustavo','Encargado',26).
trabajador(257,'Dany','Auxiliar',26).
trabajador(258,'Byron','Auxiliar',26).
trabajador(259,'Tati','Auxiliar',26).
trabajador(260,'Gilma','Auxiliar',26).
trabajador(261,'Yessi','Auxiliar',27).
trabajador(262,'Maria','Auxiliar',27).
trabajador(263,'Jose','Auxiliar',27).
trabajador(264,'Jorge','Auxiliar',27).
trabajador(265,'Broilyn','Auxiliar',27).
trabajador(266,'Julio','Encargado',27).
trabajador(267,'Gary','Auxiliar',27).
trabajador(268,'Grouth','Auxiliar',27).
trabajador(269,'Keiht','Auxiliar',27).
trabajador(270,'Bross','Auxiliar',27).
trabajador(271,'Noty','Auxiliar',28).
trabajador(272,'Yorlin','Auxiliar',28).
trabajador(273,'Maryory','Auxiliar',28).
trabajador(274,'Astrid','Auxiliar',28).
trabajador(275,'Maryury','Auxiliar',28).
trabajador(276,'Edwin','Oficinista',28).
trabajador(277,'Esvin','Ofinista',28).
trabajador(278,'Quelvin','Encargado',28).
trabajador(279,'Mariela','Oficinista',28).
trabajador(280,'Julio','Oficinista',28).
trabajador(281,'Jorge','Oficinista',29).
trabajador(282,'Gabriela','Agustin',29).
trabajador(283,'Debora','Auxiliar',29).
trabajador(284,'Marcos','Auxiliar',29).
trabajador(285,'Ilsa','Auxiliar',29).
trabajador(286,'Olga','Auxiliar',29).
trabajador(287,'Jose','Auxiliar',29).
trabajador(288,'Paola','Auxiliar',29).
trabajador(289,'Mario','Oficinista',29).
trabajador(290,'Alejandro','Oficinista',29).
trabajador(291,'Edwin','Oficinista',30).
trabajador(292,'Esvin','Ofinista',30).
trabajador(293,'Quelvin','Encargado',30).
trabajador(294,'Mariela','Oficinista',30).
trabajador(295,'Mariana','Oficinista',30).
trabajador(296,'Mike','Oficinista',30).
trabajador(297,'Nineth','Oficinista',30).
trabajador(298,'Aracely','Oficinista',30).
trabajador(299,'Carmelo','Oficinista',30).
trabajador(300,'Lorein','Oficinista',31).
trabajador(301,'yulisa','Encargado',31).


% Hechos

registro(1,10,30,'10/01/2021',4,3).
registro(2,10,30,'8/04/2022',2,5).
registro(3,10,31,'2/07/2022',5,5).
registro(4,11,8,'4/06/2021',6,6).
registro(5,11,30,'23/02/2021',2,6).
registro(6,12,30,'30/01/2021',5,5).
registro(7,12,31,'14/02/2022',6,4).
registro(8,13,18,'5/10/2021',3,9).
registro(9,13,24,'20/09/2021',1,5).
registro(10,14,7,'13/01/2021',4,4).
registro(11,14,26,'4/01/2021',6,4).
registro(12,15,24,'4/05/2022',5,2).
registro(13,15,25,'23/02/2021',3,1).
registro(14,17,23,'4/02/2021',1,1).
registro(15,18,22,'13/02/2022',3,7).
registro(18,19,21,'28/04/2022',3,4).
registro(19,20,2,'6/03/2021',4,5).
registro(20,21,18,'4/02/2021',4,4).
registro(21,22,15,'30/06/2021',2,9).
registro(22,23,6,'26/07/2021',2,4).
registro(23,24,3,'30/04/2022',3,1).
registro(24,24,10,'12/06/2021',1,9).
registro(25,1,1,'2/01/2021',3,5).
registro(26,1,11,'2/09/2021',1,8).
registro(27,1,12,'10/05/2021',4,1).
registro(28,1,4,'25/07/2021',6,1).
registro(29,1,5,'12/02/2021',2,10).
registro(30,2,13,'29/09/2021',5,1).
registro(31,2,14,'28/01/2022',2,4).
registro(32,2,16,'21/07/2021',6,6).
registro(33,2,9,'14/01/2021',4,6).
registro(34,3,17,'5/01/2021',4,4).
registro(35,3,19,'19/06/2022',2,10).
registro(36,3,20,'31/01/2022',5,5).
registro(37,4,21,'29/01/2021',4,6).
registro(38,4,27,'19/10/2021',5,10).
registro(39,4,28,'13/01/2022',1,8).
registro(40,5,29,'26/01/2021',6,8).
registro(41,5,33,'15/03/2022',4,6).
registro(42,5,1,'11/05/2021',4,8).
registro(43,6,11,'19/03/2021',2,10).
registro(44,6,12,'10/06/2022',4,6).
registro(45,6,4,'6/03/2022',4,3).

% Hechos hoteles

hotel(1,'Camino Real','14 calle zona 10',4,100,200,50,14,7).
hotel(2,'Holiday Inn','puerto barrios 10ma calle',4,200,350,75,2,20).
hotel(3,'Hu-nal ye','Los Amates 4ta av',1,50,100,60,2,260).
hotel(4,'Onetwo','Santa Cruz 12 calle',3,200,350,80,4,288).
hotel(5,'Paradise','Carcha 12-45',2,150,250,80,3,40).
hotel(6,'Tikal','Santa Elena 54-85',1,200,350,100,1,350).
hotel(7,'Atanacio','San Angel 5-8',5,350,700,100,12,102).
hotel(8,'Pana Inn','Calzada Principal zona 3',4,250,500,50,16,80).
hotel(9,'Tzul','San Agustin zona 1',3,150,400,50,20,156).
hotel(10,'Ktuz','San Juan Tzul 8-24',3,300,600,50,18,150).
hotel(11,'Patulul','Km 67',3,300,500,150,7,64).
hotel(12,'Patzul','Km 90',2,250,400,100,17,90).
hotel(13,'Libfresh','Km 100',2,250,400,50,7,100).
hotel(14,'Kenel','Km 180',3,250,400,70,8,180).
hotel(15,'Manoi','Km 40',1,250,400,40,10,40).
hotel(16,'Palmeras','Km 7',2,250,400,30,15,7).
hotel(17,'Ovni','Km 8',4,250,400,70,19,8).
hotel(18,'Ovni 2','Km 270',5,250,400,95,21,270).
hotel(19,'Runners','Km 187',3,200,350,35,22,187).
hotel(20,'Tutuc','Km 365',4,150,280,25,14,365).
hotel(21,'Las Palmas','Km 650',3,450,700,150,11,650).
hotel(22,'Kinal','Km 354',4,500,800,200,10,354).
hotel(23,'Prank','Km 269',5,400,700,150,13,269).
hotel(24,'Doña Rosa','Km 34',4,250,500,100,11,34).
hotel(25,'Los Pulpos','Km 70',3,500,700,100,6,70).
hotel(26,'Las Canarias','Km 65',2,450,600,200,10,65).
hotel(27,'Hawaii','Km 123',1,400,700,150,12,123).
hotel(28,'Yocute','Km 500',4,350,500,100,9,500).
hotel(29,'Renuevate','Km 90',3,280,600,65,20,90).
hotel(30,'Las Islas','Km 241',2,340,600,80,14,241).
hotel(31,'Usac','zona 12',3,100,50,7,4,10).
hotel(33,'El Bosque','Km 280',5,500,700,175,5,280).

% Hechos clientes

cliente(1,'Jose','Morales','Guatemala',27,'Soltero','Vacaciones').
cliente(2,'Fabrizio','Sartini','Italia',25,'Casado','Vacaciones').
cliente(3,'Gustavo','Molina','Holanda',15,'Soltero','Trabajo').
cliente(4,'Maria','Gutierrez','Guatemala',20,'Soltero','Vacaciones').
cliente(5,'Cornelio','Bustamante','Guatemala',18,'Soltero','Trabajo').
cliente(6,'Loraine','Cortez','Española',34,'Divorciado','Paso').
cliente(7,'Paco','Estanley','Guatemala',30,'Soltero','Vacaciones').
cliente(8,'Daniela','Samayoa','Guatemala',21,'Casado','Trabajo').
cliente(9,'Silvia','Santis','El Salvador',50,'Casado','Paso').
cliente(10,'Luis','Ortega','El Salvador',35,'Soltero','Vacaciones').
cliente(11,'Tatiana','Lopez','El Salvador',28,'Soltero','Paso').
cliente(12,'Ronny','Paiz','Honduras',20,'Soltero','Trabajo').
cliente(13,'Cesar','Ortiz','Guatemala',36,'Soltero','Paso').
cliente(14,'Margot','Claus','USA',32,'Soltero','Vacaciones').
cliente(15,'Jorge','Calderon','Venezuela',26,'Casado','Paso').
cliente(17,'Maira','Martinez','Mexico',25,'Soltero','Trabajo').
cliente(18,'Jazmin','Dolores','Venezuela',27,'Casado','Vacaciones').
cliente(19,'Mauro','Hernandez','Español',22,'Soltero','Vacaciones').
cliente(20,'Luis','Sagastume','Costa Rica',20,'Soltero','Trabajo').
cliente(21,'Rcharson','Patric','Inglaterra',30,'Casado','Vacaciones').
cliente(22,'Montheri','Lois','Inglaterra',32,'Casado','Vacaciones').
cliente(23,'Silverio','Perez','Mexico',33,'Casado','Paso').
cliente(24,'Monica','Suarez','Mexico',30,'Casado','Trabajo').


% ---------------------------------- Reglas ----------------------------------


% ----------------------- Menu Principal--------------------------------------

menu :-
    menu_loop.

menu_loop :-
    cls,
    write('--- Menú ---'), nl,
    write('1. Buscar hotel'), nl,
    write('2. Reportes'), nl,
    write('0. Salir'), nl,
    write('Ingrese su opción: '),
    read(Opcion),
    cls,
    ((Opcion > 2-> cls,opcionIncorrecta,cls); ejecutar_opcion(Opcion)),
    (Opcion = 0; menu_loop).

ejecutar_opcion(1) :-
    menu_criterio.
ejecutar_opcion(2) :-
    menu_reportes.
ejecutar_opcion(0) :-
    write('Finalizando el programa.').
ejecutar_opcion(_) :-
    true.

% ----------------------- Menu de busqueda ------------------------------------
menu_criterio:-
    write('--- Seleccione criterio de búsqueda ---'),nl,
    write('1. Presupuesto'),nl,
    write('2. Idioma'),nl,
    write('3. Cantidad de estrellas'),nl,
    write('4. Clima'),nl,
    write('0. Salir'),nl,
    read(OpcionCriterio),cls,nl,
    (((OpcionCriterio=0,true);(OpcionCriterio>4->cls,opcionIncorrecta,cls,menu_criterio); (OpcionCriterio<5,OpcionCriterio>0,ejecutar(OpcionCriterio),cls,menu_criterio))).

ejecutar(1):-
    /* Presupuesto */
    paso1(Presupuesto),cls,
    (
     (Presupuesto=1,presupuestoEconomico);
     (Presupuesto=2,presupuestoMedio);
     (Presupuesto=3,presupuestoVIP);
     write('Error de selección de presupuesto')
    ).

ejecutar(2):-
    /* Idioma */
    paso8(Idioma),cls,
    (
     ((Idioma = 'espanol'; Idioma = 'ingles'),esp_ing(Idioma));
      maya(Idioma)
     ).

ejecutar(3):-
    /* Cantidad de estrellas */
    paso13(Min),cls,
    paso12(Max),cls,
    (
     (Min>=1,Max=<3,regularEstrellas(Min,Max));
      buenoEstrellas(Min,Max)
    ).

ejecutar(4):-
    /* Clima */
    paso11(Clima), cls,
    (
     ((Clima='tropical';Clima='calor'),calorTropical(Clima));
     ((Clima='frio';Clima='templado'),frioTemplado(Clima))
     ).


% ----------------------- Menu de reportes -------------------------------
menu_reportes :-
    format('
     -- Seleccione el reporte a visualizar --
     1. Reporte 1
     2. Reporte 2
     3. Reporte 3
     4. Reporte 4
     5. Reporte 5
     6. Reporte 6
     7. Reporte 7
     8. Reporte 8
     9. Reporte 9
     0. Regresar
     ---------------------------------------- \n
     '),
    read(Opcion),cls,
    (
     (
      (
     ((Opcion=1,encabezado(1),reporte1);(Opcion=1,pie,esperar));
     ((Opcion=2,encabezado(2),reporte2);(Opcion=2,pie,esperar));
     ((Opcion=3,encabezado(3),reporte3);(Opcion=3,pie,esperar));
     ((Opcion=4,encabezado(4),reporte4);(nl,Opcion=4,encabezado(42),reporte42);(Opcion=4,pie,esperar));
     ((Opcion=5,encabezado(5),reporte5);(Opcion=5,pie,esperar));
     ((Opcion=6,encabezado(6),reporte6);(Opcion=6,pie,esperar));
     ((Opcion=7,encabezado(7),reporte7);(Opcion=7,pie,esperar));
     ((Opcion=8,encabezado(8),reporte8);(Opcion=8,pie,esperar));
     ((Opcion=9,encabezado(9),reporte9);(Opcion=9,pie,esperar))),cls,menu_reportes);
     (Opcion=0,true);
     ((Opcion>9,opcionIncorrecta,cls,menu_reportes))
    ).


% ---------------------------- CAMINOS -----------------------------------

paso1(Presupuesto):-
    /*
     Económico 0 - 1600
     Medio 1600 - 3400
     VIP 3400 - 10000
    */
    format('Ingrese el presupuesto que tiene disponible
    1- Económico
    2- Medio
    3- VIP'),nl,
    read(Presupuesto).

paso2(Dias):-
    write('Ingrese la cantidad de días de estancia en el lugar \n'),
    read(Dias).

paso3(Habitacion):-
    write('Ingrese el tipo de habitación deseado \n 1- Simple \n 2- Doble \n'),
    read(PreHabitacion), Habitacion is (PreHabitacion-1).

paso4(Personas):-
    write('Ingrese la cantidad de personas que iran al viaje. \n'),
    read(Personas).

paso5(Vehiculo):-
    write('¿Tiene vehículo? (si\\no) \n'),
    read(Vehiculo)/*,(PreVehiculo=='si',Vehiculo=1;Vehiculo=0)*/.

paso6(Distancia):-
    write('Ingrese la distancia deseada para viajar en km \n'),
    read(Distancia).

paso7(Comida):-
    write('Ingrese el precio máximo destinado para la comida \n'),
    read(Comida).

paso8(Idioma):-
    write('Seleccione el idioma preferido para el hotel:
    \n 1- Español \n 2- Katchikel \n 3- Ingles \n 4- Ketchi \n'),
    read(Seleccion),
    (Seleccion=1-> Idioma = 'espanol' ;
    Seleccion=2-> Idioma = 'katchikel' ;
    Seleccion=3-> Idioma = 'ingles' ;
    Idioma = 'Ketchi').

paso9(Tiempo):-
    write('Ingrese el tiempo máximo deseado del viaje en hrs (0-8)\n'),
    read(Tiempo).

paso10(Limpieza):-
    write('Desea que el hotel tenga servicio de limpieza extra?
    \n1- Sí \n2- No \n'),
    read(Limpieza).

paso11(Clima):-
    write('Cómo le gustaría que fuera el clima del lugar a visitar?
    \n1- tropical \n2- caluroso \n3- frio \n4- templado \n'),
    read(Seleccion),
    (
        Seleccion=1-> Clima = 'tropical';
        Seleccion=2-> Clima = 'calor';
        Seleccion=3-> Clima = 'frio';
        Seleccion=4-> Clima = 'templado'
    ).

paso12(EstrellasMax):-
    write('Ingrese la cantidad máxima de estrellas que le gustaría que tuviera de calificación el hotel a visitar. (1-5) \n'),
    read(EstrellasMax).

paso13(EstrellasMin):-
    write('Ingrese la cantidad mínima de estrellas que le gustaría que tuviera de calificación el hotel a visitar. (1-5)\n'),
    read(EstrellasMin).

paso14(PrecioHabitacion):-
    write('Ingrese el máximo precio de habitaciones que estaría dispuesto a contratar. \n'),
    read(PrecioHabitacion).

paso15(TiemposComida):-
    write('Cuantos tiempos de comida por día desea cotizar? \n'),
    read(TiemposComida).

paso16(PasajeMaximo):-
    write('De cuanto es el pasaje máximo que desea cotizar? \n'),
    read(PasajeMaximo).



% ----------------------- PRESUPUESTO ------------------------------------

presupuestoEconomico:-
     paso15(TiemposComida),cls,
     paso7(Comida),cls,
     paso3(Habitacion),cls,
     paso4(Personas),cls,
     paso16(PasajeMaximo),cls,
     /*Vehiculo is no,*/
     Distancia is 0,
     paso2(Dias),cls,
     calcularPresupuesto(1,Dias,Habitacion,Personas,no,Distancia,Comida,PasajeMaximo,TiemposComida);esperar.

presupuestoMedio:-
     paso3(Habitacion),cls,
     paso4(Personas),cls,
     paso2(Dias),cls,
     paso7(Comida),cls,
     paso5(Vehiculo),cls,
     paso6(Distancia),cls,
     PasajeMaximo is 0,
     TiemposComida is 3,
     calcularPresupuesto(2,Dias,Habitacion,Personas,Vehiculo,Distancia,Comida,PasajeMaximo,TiemposComida);esperar.

presupuestoVIP:-
     paso4(Personas),cls,
     paso2(Dias),cls,
     paso5(Vehiculo),cls,
     paso3(Habitacion),cls,
     paso7(Comida),cls,
     PasajeMaximo is 0,
     TiemposComida is 3,
     Distancia is 0,
     calcularPresupuesto(3,Dias,Habitacion,Personas,Vehiculo,Distancia,Comida,PasajeMaximo,TiemposComida);esperar.


calcularPresupuesto(Presupuesto,Dias,Habitacion,
                   Personas,Vehiculo,Distancia,Comida,
                    PasajeMaximo,TiemposComida):-
    /* Get Hechos*/
    hotel(_,Hotel,Direccion,_,Simple,Doble,Pcomida,IdDepto,Pdistancia),
    departamento(IdDepto,Ndepto,_,_,_,Ppasaje),
    /* Cálculos */
    TotalGasolina is (Pdistancia * 2 * 12.5),
    TotalPasaje is (Ppasaje * Personas * 2),
    calcularTotalComida(Comida,TotalComida,Pcomida,Dias,Personas,TiemposComida),
    calcularTotalHabitaciones(Habitacion, Simple, Doble, Personas, Dias, TotalHabitaciones),
    /*Calculo del total a gastar*/
    sumarTotalesPr(Vehiculo,TotalCosto,TotalPasaje,TotalGasolina,
                  TotalHabitaciones,TotalComida),
    /*Limitar Hechos con filtros*/
   ((Distancia>0,Pdistancia =< Distancia);Distancia=0),
    (Pcomida =< Comida; Comida = 0),
    ((Vehiculo=no, PasajeMaximo\=0,TotalPasaje =< PasajeMaximo);
    (Vehiculo=no, PasajeMaximo=0);
    Vehiculo=si),
    (
     (Presupuesto=1,TotalCosto>0,TotalCosto=<1600);
     (Presupuesto=2,TotalCosto>1600,TotalCosto=<3400);
     (Presupuesto=3,TotalCosto>3400)
    ),
    /*Imprimir resultados*/
    printResultado(Vehiculo,Hotel,Ndepto,Direccion,TotalGasolina,TotalPasaje,
                        TotalHabitaciones,TotalComida,TotalCosto).


% -------------------------- IDIOMA ---------------------------------------

esp_ing(Seleccion):-
    Idioma = Seleccion,
    paso5(Vehiculo),cls,
    paso2(Dias),cls,
    paso6(Distancia),cls,
    paso15(TiemposComida),cls,
    paso7(Comida),cls,
    paso3(Habitacion),cls,
    paso4(Personas),cls,
    calcularIdioma(Idioma,0,Dias,Habitacion,Personas,Vehiculo,Distancia,Comida,TiemposComida); esperar.


maya(Seleccion):-
    Idioma = Seleccion,
    paso4(Personas),cls,
    paso15(TiemposComida),cls,
    paso7(Comida),cls,
    paso5(Vehiculo),cls,
    paso2(Dias),cls,
    paso9(Tiempo),cls,
    paso3(Habitacion),cls,
    calcularIdioma(Idioma,Tiempo,Dias,Habitacion,Personas,Vehiculo,0,Comida,TiemposComida); esperar.


calcularIdioma(Idioma,Tiempo,Dias,Habitacion,
                   Personas,Vehiculo,Distancia,Comida,TiemposComida):-
    /*Get hechos*/
    hotel(_,Hotel,Direccion,_,Simple,Doble,Pcomida,IdDepto,Pdistancia),
    departamento(IdDepto,Ndepto,TViaje,RIdioma,_,Ppasaje),
    /*trabajador(_,_,Profesion,IdHotel),*/
    /*Calculos*/
    TotalGasolina is (Pdistancia * 2 * 12.5),
    TotalPasaje is (Ppasaje * Personas * 2),
    calcularTotalComida(Comida,TotalComida,Pcomida,Dias,Personas,TiemposComida),
    calcularTotalHabitaciones(Habitacion, Simple, Doble, Personas, Dias,
                              TotalHabitaciones),
    sumarTotalesPr(Vehiculo,TotalCosto,TotalPasaje,TotalGasolina,
                  TotalHabitaciones,TotalComida),
    /*Limitar Hechos con filtros*/
    ((Distancia>0,Pdistancia =< Distancia);Distancia=0),
    (Pcomida =< Comida; Comida = 0),
    RIdioma = Idioma,
    ((Tiempo>0,TViaje =< Tiempo);Tiempo=0),
    /*write('Todo bien hasta auxiliar'),
    ((Auxiliar=1,Profesion='Auxiliar');true),*/
    /*Imprimir resultados*/
    printResultado(Vehiculo,Hotel,Ndepto,Direccion,TotalGasolina,TotalPasaje,
                        TotalHabitaciones,TotalComida,TotalCosto).


% ----------------------- ESTRELLAS ---------------------------------------

regularEstrellas(Min,Max):-
    EstrellasMin is Min,
    EstrellasMax is Max,
    paso3(Habitacion),cls,
    paso14(PrecioHabitacion),cls,
    paso2(Dias),cls,
    paso5(Vehiculo),cls,
    paso7(Comida),cls,
    paso15(TiemposComida),cls,
    paso4(Personas),cls,
    calcularEstrellas(EstrellasMin,EstrellasMax,Dias,Habitacion,
                   Personas,Vehiculo,Comida,PrecioHabitacion,0,TiemposComida); esperar.

buenoEstrellas(Min,Max):-
    EstrellasMin is Min,
    EstrellasMax is Max,
    paso3(Habitacion),cls,
    paso6(Distancia),cls,
    paso2(Dias),cls,
    paso4(Personas),cls,
    paso7(Comida),cls,
    paso5(Vehiculo),cls,
        calcularEstrellas(EstrellasMin,EstrellasMax,Dias,Habitacion,
                   Personas,Vehiculo,Comida,0,Distancia,3); esperar.

calcularEstrellas(EstrellasMin,EstrellasMax,Dias,Habitacion,
                   Personas,Vehiculo,Comida,PrecioHabitacion,
                 Distancia,TiemposComida):-
    /*Get hechos*/
    hotel(_,Hotel,Direccion,Estrellas,Simple,Doble,Pcomida,IdDepto,Pdistancia),
    departamento(IdDepto,Ndepto,_,_,_,Ppasaje),
    /*Calculos*/
    TotalGasolina is (Pdistancia * 2 * 12.5),
    TotalPasaje is (Ppasaje * Personas * 2),
    (
     (Habitacion=0,PHabitacion is Simple);
     (Habitacion=1,PHabitacion is Doble)
    ),
    calcularTotalComida(Comida,TotalComida,Pcomida,Dias,Personas,TiemposComida),
    calcularTotalHabitaciones(Habitacion, Simple, Doble, Personas, Dias,
                              TotalHabitaciones),
    sumarTotalesPr(Vehiculo,TotalCosto,TotalPasaje,TotalGasolina,
                  TotalHabitaciones,TotalComida),
    /*Limitar Hechos con filtros*/
    (Pcomida =< Comida; Comida == 0),
    (PHabitacion =< PrecioHabitacion;PrecioHabitacion=0),
    Estrellas =< EstrellasMax,
    Estrellas >= EstrellasMin,
    ((Distancia>0,Pdistancia =< Distancia);Distancia=0),
    /*Imprimir resultados*/
    printResultado(Vehiculo,Hotel,Ndepto,Direccion,TotalGasolina,TotalPasaje,
                        TotalHabitaciones,TotalComida,TotalCosto).

% --------------------------- CLIMA ---------------------------------------

calorTropical(Seleccion):-
    Clima = Seleccion,
    paso5(Vehiculo),cls,
    paso4(Personas),cls,
    paso13(EstrellasMin),cls,
    paso3(Habitacion),cls,
    paso9(Tiempo), cls,
    paso2(Dias),cls,
    paso7(Comida),cls,
    calcularClima(Clima,Dias,Habitacion,0,Tiempo,
                   Personas,Vehiculo,Comida,EstrellasMin,'0');
    esperar.

frioTemplado(Seleccion):-
    Clima = Seleccion,
    paso7(Comida),cls,
    paso2(Dias),cls,
    paso8(Idioma),cls,
    paso6(Distancia),cls,
    paso4(Personas),cls,
    paso3(Habitacion),cls,
    paso5(Vehiculo),cls,
    calcularClima(Clima,Dias,Habitacion,Distancia,0,
                   Personas,Vehiculo,Comida,0,Idioma); esperar.


calcularClima(Clima,Dias,Habitacion,Distancia,Tiempo,
                   Personas,Vehiculo,Comida,EstrellasMin,Idioma):-
    /*Get hechos*/
    hotel(_,Hotel,Direccion,Estrellas,Simple,Doble,Pcomida,IdDepto,Pdistancia),
    departamento(IdDepto,Ndepto,RTiempo,RIdioma,RClima,Ppasaje),
    /*Calculos*/
    TotalGasolina is (Pdistancia * 2 * 12.5),
    TotalPasaje is (Ppasaje * Personas * 2),
    calcularTotalComida(Comida,TotalComida,Pcomida,Dias,Personas,3),
    calcularTotalHabitaciones(Habitacion, Simple, Doble, Personas, Dias,
                              TotalHabitaciones),
    sumarTotalesPr(Vehiculo,TotalCosto,TotalPasaje,TotalGasolina,
                  TotalHabitaciones,TotalComida),
    /*Limites*/
    (Pcomida=<Comida; Comida=0),
     RClima=Clima,
    (Idioma='0';RIdioma=Idioma),
    ((EstrellasMin>0,Estrellas>=EstrellasMin);EstrellasMin=0),
    ((Tiempo>0,RTiempo =< Tiempo);Tiempo=0),
    ((Distancia>0,Pdistancia =< Distancia);Distancia=0),
    /*Imprimir resultados*/
    printResultado(Vehiculo,Hotel,Ndepto,Direccion,TotalGasolina,TotalPasaje,
                        TotalHabitaciones,TotalComida,TotalCosto).


% ----------------------- Auxiliares ---------------------------------------


calcularTotalHabitaciones(0, Simple, _, Personas, Dias, TotalHabitaciones) :-
    TotalHabitaciones is Simple * Personas * Dias
    .

calcularTotalHabitaciones(1, _, Doble, Personas, Dias, TotalHabitaciones) :-
    TotalHabitaciones is Doble * Personas * Dias
    .

calcularTotalComida(Comida,TotalComida,Pcomida,Dias,Personas,TiemposComida):-
    (Comida=0-> TotalComida is 0;
    TotalComida is (Pcomida * TiemposComida * Dias * Personas))
    .

sumarTotalesPr(no,TotalCosto,TotalPasaje,_,TotalHabitaciones,TotalComida):-
    TotalCosto is TotalPasaje + TotalHabitaciones + TotalComida

    .

sumarTotalesPr(si,TotalCosto,_,TotalGasolina,TotalHabitaciones,TotalComida):-
    TotalCosto is TotalGasolina + TotalHabitaciones + TotalComida
    .

not_in(Elemento, Lista) :-
    not(member(Elemento, Lista)).

contarHotelesCalor(IdHotel, Cantidad) :-
    findall(_, registro(_, _, IdHotel, _, _, _), Registros),
    length(Registros, Cantidad).

contarDeptosCalor(IdDepto, Cantidad) :-
    findall(_, hotel(_, _, _, _, _, _, _, IdDepto, _), Registros),
    length(Registros, Cantidad).


opcionIncorrecta :-
    cls,
    writeln('Ingreso una opción no válida. \n Por favor ingrese una opción válida para continuar.'), esperar.

% -------------------------- Impresion ------------------------------------


printResultado(no,Hotel,Ndepto,Direccion,_,TotalPasaje,
                    TotalHabitaciones,TotalComida,TotalCosto):-
    format('
    ---------------------------------------------------
    Nombre del Hotel: ~w
    Departamento: ~w
    Direccion: ~w
    Precio por habitaciones: ~a
    Precio por comidas: ~a
    Precio de pasaje: ~a
    Total a gastar: ~a
    --------------------------------------------------- \n',
    [Hotel,Ndepto,Direccion,TotalHabitaciones,TotalComida,TotalPasaje,
    TotalCosto]),
    fail.


printResultado(si,Hotel,Ndepto,Direccion,TotalGasolina,_,
                    TotalHabitaciones,TotalComida,TotalCosto):-
    format('
    ---------------------------------------------------
    Nombre del Hotel: ~w
    Departamento: ~w
    Direccion: ~w
    Precio por habitaciones: ~a
    Precio por comidas: ~a
    Precio de gasolina: ~a
    Total a gastar: ~a
    --------------------------------------------------- \n',
    [Hotel,Ndepto,Direccion,TotalHabitaciones,TotalComida,TotalGasolina,
    TotalCosto]),
    fail.


% -------------------------- Reportes ------------------------------------

reporte1 :-
    /*write('Reporte 1'),nl,*/
    registro(_,IdCliente,IdHotel,_,_,Opinion),
    cliente(IdCliente,NombreCliente,Apellido,Pais,_,_,_),
    hotel(IdHotel,NombreHotel,_,_,_,_,_,_,_),
    /*Filtros*/
    Opinion>=5,
    not_in(Pais,['Guatemala','El Salvador','Honduras','USA',
                 'Mexico','Venezuela','Costa Rica']),
    /*Impresion*/
    format('
    ~a   \t~a    \t~a   \t~a   \t~a',
    [NombreCliente,Apellido,Pais,Opinion,NombreHotel]),fail.


reporte2 :-
    /*Datos*/
    registro(_,IdCliente,IdHotel,_,_,_),
    cliente(IdCliente,NombreCliente,Apellido,_,_,EstadoCivil,_),
    hotel(IdHotel,NombreHotel,_,Estrellas,_,_,_,_,_),
    /*Filtros*/
    Estrellas>4,
    /*Impresion*/
    format('
    ~a   \t~a    \t~a   \t~a    \t~a',
    [NombreCliente,Apellido,EstadoCivil,NombreHotel,Estrellas]),fail.

reporte3 :-
    /*Datos*/
    hotel(IdHotel,NombreHotel,_,_,_,_,_,_,_),
    trabajador(_,NombreTrabajador,Cargo,IdHotel),
    registro(_,_,IdHotel,_,_,Opinion),
    /*Filtros*/
    Cargo='Administrador',
    Opinion>=5,
    /*Impresión*/
    format('
    ~a ~15+ \t~a    \t~a',
    [NombreTrabajador,NombreHotel,Opinion]),fail.

reporte4 :-
    /*Datos*/
    hotel(IdHotel,NombreHotel,_,_,_,_,_,IdDepto,_),
    departamento(IdDepto,NombreDepto,_,_,Clima,_),
    contarHotelesCalor(IdHotel,Cantidad),
    /*Filtros*/
    Clima='calor',
    /*Impresión*/
    format('
    ~a ~15+ \t~a~22+ \t~a',
    [NombreHotel,NombreDepto,Cantidad]),fail.

reporte42 :-
    /*Datos*/
    departamento(IdDepto,NombreDepto,_,_,Clima,_),
    contarDeptosCalor(IdDepto,Cantidad),
    /*Filtros*/
    Clima='calor',
    /*Impresión*/
    format('
    ~a ~15+ \t~a',
    [NombreDepto,Cantidad]),fail.


reporte5 :-
    /*Datos*/
    cliente(IdCliente,NombreCliente,Apellido,Nacionalidad,_,_,_),
    registro(_,IdCliente,IdHotel,_,_,_),
    hotel(IdHotel,NombreHotel,_,_,_,_,_,IdDepto,_),
    departamento(IdDepto,_,_,Idioma,_,_),
    /*Filtros*/
    Nacionalidad\='Guatemala',
    Idioma='espanol',
    /*Impresión*/
    format('
    ~a ~15+ \t~a ~15+ \t ~a ',
    [NombreCliente,Apellido,NombreHotel]),fail.

reporte6 :-
    /*Datos*/
    registro(_,IdCliente,IdHotel,_,Estadia,Opinion),
    cliente(IdCliente,NombreCliente,Apellido,_,_,_,_),
    hotel(IdHotel,NombreHotel,_,_,_,_,_,IdDepto,_),
    departamento(IdDepto,NombreDepto,_,Idioma,_,_),
    /*Filtros*/
    Opinion>=7,
    Estadia>=3,
    /*Impresión*/
    format('
    ~a ~15+ \t~a ~15+ \t ~a \t ~a ~a',
    [NombreHotel,NombreDepto,Idioma,NombreCliente,Apellido]),fail.

reporte7 :-
    /*Datos*/
    registro(_,IdCliente,IdHotel,_,Estadia,_),
    cliente(IdCliente,NombreCliente,Apellido,Nacionalidad,_,_,_),
    hotel(IdHotel,NombreHotel,_,_,_,_,_,IdDepto,_),
    departamento(IdDepto,_,_,Idioma,_,_),
    /*Filtros*/
    Nacionalidad\='Guatemala',
    Estadia=<2,
    Idioma='ingles',
    /*Impresión*/
    format('
    ~a ~15+ \t~a ~15+ \t~a ~a',
    [Nacionalidad,NombreHotel,NombreCliente,Apellido]),fail.

reporte8 :-
    /*Datos*/
    registro(_,IdCliente,IdHotel,_,_,_),
    cliente(IdCliente,NombreCliente,Apellido,Nacionalidad,_,_,_),
    hotel(IdHotel,_,_,_,_,_,_,IdDepto,_),
    departamento(IdDepto,NombreDepto,_,_,_,_),
    /*Filtros*/
    NombreDepto='Peten',
    /*Impresión*/
    format('
    ~a ~15+ \t~a ~a',
    [Nacionalidad, NombreCliente, Apellido]),fail.


reporte9 :-
    /*Datos*/
    registro(_,IdCliente,IdHotel,_,Estadia,Opinion),
    cliente(IdCliente,NombreCliente,Apellido,_,_,EstadoCivil,_),
    hotel(IdHotel,NombreHotel,Direccion,_,_,_,_,_,_),
    /*Filtros*/
    EstadoCivil='Casado',
    Opinion>6,
    Estadia>=3,
    /*Impresión*/
    format('
    ~a ~15+ \t~a ~15+ \t~a ~a',
    [NombreHotel, Direccion, NombreCliente,Apellido]),fail.


% -------------------------- Encabezados ------------------------------------

encabezado(1):-
    format('
    ----------------------------Reporte 1----------------------------
    Nombre    \tApellido   \tNac.    \tCalif. \tHotel
    -----------------------------------------------------------------').

encabezado(2):-
    format('
    ----------------------------Reporte 2----------------------------
    Nombre    \tApellido   \tEstado C.    \tHotel.   \tEstr.
    -----------------------------------------------------------------').

encabezado(3):-
    format('
    ----------------------------Reporte 3----------------------------
    Nombre    ~15+ \tHotel  ~15+  \tValoración
    -----------------------------------------------------------------').

encabezado(4):-
    format('
    ----------------------------Reporte 4----------------------------
    Hotel    ~15+ \tDepto.  ~15+  \tReservaciones
    -----------------------------------------------------------------').

encabezado(42):-
    format('
    ----------------------------Reporte 4----------------------------
    Depto.    ~15+ \tReservaciones
    -----------------------------------------------------------------').

encabezado(5):-
    format('
    ----------------------------Reporte 5----------------------------
    Nombre    ~15+ \tApellido  ~15+  \tHotel
    -----------------------------------------------------------------').

encabezado(6):-
    format('
    ----------------------------Reporte 6----------------------------
    Hotel    ~15+ \tDepto  ~15+  \tIdioma  \tCliente
    -----------------------------------------------------------------').

encabezado(7):-
    format('
    ----------------------------Reporte 7----------------------------
    País    ~15+ \tHotel  ~15+  \tCliente
    -----------------------------------------------------------------').

encabezado(8):-
    format('
    ----------------------------Reporte 8----------------------------
    País    ~15+ \tCliente
    -----------------------------------------------------------------').

encabezado(9):-
    format('
    ----------------------------Reporte 9----------------------------
    Hotel    ~15+ \tDirección ~15+ \tCliente
    -----------------------------------------------------------------').

pie:-
    format('
    -----------------------------------------------------------------\n').


/*
registro(1,10,30,'10/01/2021',4,3).
registro(IdRegistro,cliente,hotel,fecha,estadia,opinion)*/

/*
obtener_no_repetidos(Ids) :-
    findall((Cliente,Opinion), registro(_, Cliente, _, _, _, Opinion), Lista),
    list_to_set(Lista, Ids).
*/










