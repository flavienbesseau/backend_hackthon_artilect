INSERT INTO `mydb`.`competence` (`name`, `level`, `reward`) VALUES ('Electronique', '0', '0');
INSERT INTO `mydb`.`competence` (`name`, `level`, `reward`) VALUES ('Couture', '0', '0');
INSERT INTO `mydb`.`competence` (`name`, `level`, `reward`) VALUES ('Mécanique', '0', '0');
INSERT INTO `mydb`.`competence` (`name`, `level`, `reward`) VALUES ('Programmation', '0', '0');
INSERT INTO `mydb`.`competence` (`name`, `level`, `reward`) VALUES ('Ebénisterie', '0', '0');


INSERT INTO `mydb`.`machine` (`name`, `pseudo`, `description`, `url_photo`, `video_link`, `notice`, `discord_link` ) VALUES ('LASER-SP100', 'Albert', 'Découpe Laser : Trotec Speedy 100\nPuissance du laser : 60 watts\nSurface de travail : 610mm x 305mm\nÉpaisseur Max : 10mm\nMatériaux usinables:\n\nGravure : bois (sauf mdf), carton, plexiglas (acrylique), textile, pierre, verre, cuir\nDécoupe : bois (sauf mdf), carton, plexiglas (acrylique), textile, papier, cuir', 'https://artilect.fr/wp-content/uploads/doliconnect/product/183/LASER-SP100-Plan%20de%20travail%2080-200x200.png', 'https://www.youtube.com/watch?v=bdLReN9phgg&ab_channel=SeeSamSolutions', 'https://lesatelierseclaires-manager.com/uploads/machine_file/37/LASER_mode-d-emploi_version-PRINT_2016-10-01.pdf', 'https://discord.gg/Dmhgk8AT');
INSERT INTO `mydb`.`machine` (`name`, `pseudo`, `description`, `url_photo`, `video_link`, `notice`, `discord_link` ) VALUES ('PRINT-CAMM1 ', 'Cathy', 'Course : 50-700 mm\nPassage sous portique : 165mm\nMatériaux : vinyle,  papier,vinyles, flocages, matériaux de transfert, adhésifs de fenêtre\nApplications : lettrage, transferts pour vêtements,  prototypes d’emballage, signalisation et les Course : 50-700 mm\nPassage sous portique : 165mm\nMatériaux : vinyle,  papier,vinyles, flocages, matériaux de transfert, adhésifs de fenêtre\nApplications : lettrage, transferts pour vêtements,  prototypes d’emballage, signalisation et les autocollants... La découpe vinyle permet de découper des habillages de véhicule, des panneaux signalétiques, des stickers, des textiles décorés et autres créations graphiques.', 'https://artilect.fr/wp-content/uploads/doliconnect/product/37/PRINT-CAMM1-Plan%20de%20travail%2082-200x200.png', 'https://www.youtube.com/watch?v=AMBFQtDi5o0&ab_channel=RolandDGCentralEurope', 'https://www.machines-3d.com/images/Image/File/notice/Manuel_utilisation_FR_GS24.pdf', 'https://discord.gg/ZrurkTR8');
INSERT INTO `mydb`.`machine` (`name`, `pseudo`, `description`, `url_photo`, `video_link`, `notice`, `discord_link` ) VALUES ('UV-LEF200', 'Roland', 'Impression UV : LEF 2 200\nSurface de travail : 508mmx330mm\nÉpaisseur Max : 10mm\n\nTarification au volume d\'encre consommée (ML)\nA titre indicatif : la surface maximale (508x330mm) revient à 15€ ou un format A4 (210x297mm) revient à 6€. L’impression UV offre les meilleures possibilités en matière de personnalisation et de création d’objets customisés : cadeaux, gadgets, appareils électroniques, céramiques, accessoires de mode, enseignes et objets de décoration intérieure…', 'https://artilect.fr/wp-content/uploads/doliconnect/product/245/UV-LEF200-Plan%20de%20travail%2094-200x200.png', 'https://www.youtube.com/watch?v=hrkL2zOOP34', 'https://webmanual.rolanddg.com/contents/manuals/LEF-200_STA_EN_R3.pdf', 'https://discord.gg/ZrurkTR8');
INSERT INTO `mydb`.`machine` (`name`, `pseudo`, `description`, `url_photo`, `video_link`, `notice`, `discord_link` ) VALUES ('FAB-ENDER1', 'Fabio', 'Couleur de matériau disponible : blanc, rouge, bleu, noir, vert et jaune\nÉpaisseur de couche minimale : 0.10mm\nTaille d’impression : 220x220x250mm\nFormat d’entrée : STL, GCODE, OBJ\nMatériau d’impression : PLA. Les imprimantes 3D permettent de produire des objets réels de tout type à partir d’un fichier 3D. Les matières disponibles sont des dérivées plastiques ou assimilés et existent dans de nombreuses couleurs.', 'https://artilect.fr/wp-content/uploads/doliconnect/product/224/FAB-ENDER1-Plan%20de%20travail%2088-200x200.png', 'https://www.youtube.com/watch?v=8chl5VqQkSs', 'https://www.lesimprimantes3d.fr/wp-content/uploads/2018/10/Ender3-QuickStart.pdf', 'https://discord.gg/ZrurkTR8');
INSERT INTO `mydb`.`machine` (`name`, `pseudo`, `description`, `url_photo`, `video_link`, `notice`, `discord_link` ) VALUES ('LASER-SP500', 'Norbert', 'Découpe Laser : Trotec Speedy 500\nPuissance du laser : 120 watts\nSurface de travail : 1245mm x 710mm\nÉpaisseur Max : 10mm\nCharge matière max. : 25kg\nMatériaux usinables:\n\nGravure : bois (sauf mdf), carton, plexiglas (acrylique), textile, pierre, verre, cuir\nDécoupe : bois (sauf mdf), carton, plexiglas (acrylique), textile, papier, cuir', 'https://artilect.fr/wp-content/uploads/doliconnect/product/8/LASER-SP500-Plan%20de%20travail%2079-200x200.png', 'https://www.youtube.com/watch?v=F6iQF935y4w&ab_channel=TrotecLaser', 'https://www.troteclaser.com/fileadmin/content/images/Contact_Support/Manuals/8014-SP500-Manual-EN.pdf', 'https://discord.gg/ZrurkTR8');


INSERT INTO `mydb`.`competence_machine` (`fk_competence_id`, `fk_machine_id`) VALUES ('1', '1');
INSERT INTO `mydb`.`competence_machine` (`fk_competence_id`, `fk_machine_id`) VALUES ('4', '1');
INSERT INTO `mydb`.`competence_machine` (`fk_competence_id`, `fk_machine_id`) VALUES ('4', '2');
INSERT INTO `mydb`.`competence_machine` (`fk_competence_id`, `fk_machine_id`) VALUES ('4', '3');
INSERT INTO `mydb`.`competence_machine` (`fk_competence_id`, `fk_machine_id`) VALUES ('4', '4');
INSERT INTO `mydb`.`competence_machine` (`fk_competence_id`, `fk_machine_id`) VALUES ('1', '5');
INSERT INTO `mydb`.`competence_machine` (`fk_competence_id`, `fk_machine_id`) VALUES ('4', '5');

INSERT INTO `mydb`.`project` (`name`, `status`, `description`, `discord_link`, `image`, `fk_machine_id`) VALUES ('Raquette de ping-pong', 'En cours', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'https://discord.gg/agA2DapU', 'https://lab.flers-agglo.fr/uploads/project_image/329/large_project_image.jpg', '1');
INSERT INTO `mydb`.`project` (`name`, `status`, `description`, `discord_link`, `image`, `fk_machine_id`) VALUES ('Afficheur CO2', 'Terminé', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'https://discord.gg/agA2DapU', 'https://edulab.univ-rennes2.fr/uploads/project_image/929/large_project_image.png', '5');
INSERT INTO `mydb`.`project` (`name`, `status`, `description`, `discord_link`, `image`, `fk_machine_id`) VALUES ('Création de plaque de plastique', 'En cours', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'https://discord.gg/agA2DapU', 'https://fabmanager.simplon.co/uploads/project_image/787/large_project_image.jpg', '1');
INSERT INTO `mydb`.`project` (`name`, `status`, `description`, `discord_link`, `image`, `fk_machine_id`) VALUES ('Tampon de blagues scientifiques', 'Terminé', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'https://discord.gg/agA2DapU', 'https://fablab.ledome.info/uploads/project_image/2483/large_project_image.jpg', '4');
INSERT INTO `mydb`.`project` (`name`, `status`, `description`, `discord_link`, `image`, `fk_machine_id`) VALUES ('Tuile sur tulle', 'En cours', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'https://discord.gg/agA2DapU', 'https://fabmanager.simplon.co/uploads/project_image/719/large_project_image.jpg', '4');
INSERT INTO `mydb`.`project` (`name`, `status`, `description`, `discord_link`, `image`, `fk_machine_id`) VALUES ('Réalisation de Tote Bag', 'Terminé', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'https://discord.gg/agA2DapU', 'https://artifab.cmar-paca.fr/uploads/project_image/121/large_project_image.jpg', '2');
INSERT INTO `mydb`.`project` (`name`, `status`, `description`, `discord_link`, `image`, `fk_machine_id`) VALUES ('Décoration de noël en découpe', 'En cours', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'https://discord.gg/agA2DapU', 'https://edulab.univ-rennes2.fr/uploads/project_image/926/large_project_image.jpg', '5');
INSERT INTO `mydb`.`project` (`name`, `status`, `description`, `discord_link`, `image`, `fk_machine_id`) VALUES ('Masque imprimé', 'Terminé', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'https://discord.gg/agA2DapU', 'https://fablab-emode.fr/uploads/project_image/115/large_project_image.jpg', '2');
INSERT INTO `mydb`.`project` (`name`, `status`, `description`, `discord_link`, `image`, `fk_machine_id`) VALUES ('Logo pour poubelle recyclage', 'Terminé', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', 'https://discord.gg/agA2DapU', 'https://fablab.ledome.info/uploads/project_image/2086/large_project_image.jpeg', '2');

INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('1', '4');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('1', '5');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('2', '1');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('2', '3');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('2', '4');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('2', '5');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('3', '4');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('4', '4');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('4', '5');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('5', '4');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('6', '2');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('6', '4');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('7', '4');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('7', '5');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('8', '2');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('8', '4');
INSERT INTO `mydb`.`project_competence` (`fk_project_id`, `fk_competence_id`) VALUES ('9', '4');


INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Barbara G. Ruiz', 'https://images.unsplash.com/photo-1523761415282-2106778cfb5a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1498&q=80', 'barb.ruiz@gmail.com', 'https://discord.gg/agA2DapU');
INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Adib Imad Sabbagh', 'https://images.unsplash.com/photo-1539605480396-a61f99da1041?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80', 'adib.sab@gmail.com', 'https://discord.gg/agA2DapU');
INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Sylvie Carignan', 'https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80', 'sylvie.car@gmail.com', 'https://discord.gg/agA2DapU');
INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Rémy Davignon', 'https://images.unsplash.com/photo-1603415526960-f7e0328c63b1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80', 'remydav@gmail.com', 'https://discord.gg/agA2DapU');
INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Julie Chevrette', 'https://images.unsplash.com/photo-1598550874175-4d0ef436c909?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1778&q=80', 'juliechevrette@gmail.com', 'https://discord.gg/agA2DapU');
INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Charles Tanguay', 'https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1500&q=80', 'charles.tanguay@gmail.com', 'https://discord.gg/agA2DapU');
INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Alain Fortier', 'https://images.unsplash.com/photo-1553267751-1c148a7280a1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80', 'alain.fortier@gmail.com', 'https://discord.gg/agA2DapU');
INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Nathifa Luban Essa', 'https://images.unsplash.com/photo-1531123897727-8f129e1688ce?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80', 'nathlubessa@gmail.com', 'https://discord.gg/agA2DapU');
INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Jérôme Nadeau', 'https://images.unsplash.com/photo-1573007974656-b958089e9f7b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80', 'jejenadeau@gmail.com', 'https://discord.gg/agA2DapU');
INSERT INTO `mydb`.`user` (`name`, `url_photo`, `email`, `discord_link`) VALUES ('Amélie Du Trieux', 'https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80', 'amelimelie@gmail.com', 'https://discord.gg/agA2DapU');


INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('1', '4');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('1', '3');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('1', '5');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('2', '4');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('2', '2');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('3', '4');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('4', '1');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('4', '5');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('4', '3');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('5', '4');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('5', '3');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('6', '4');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('6', '1');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('6', '5');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('7', '4');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('8', '1');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('9', '2');
INSERT INTO `mydb`.`user_competence` (`fk_user_id`, `fk_competence_id`) VALUES ('10', '4');

INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('1', '1');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('2', '2');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('1', '3');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('4', '4');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('5', '5');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('6', '6');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('9', '7');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('1', '8');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('1', '9');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('3', '10');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('3', '2');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('4', '2');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('7', '6');
INSERT INTO `mydb`.`user_project` (`fk_project_id`, `fk_user_id`) VALUES ('8', '6');


INSERT INTO `mydb`.`personality` (`name`, `url`) VALUES ('wood', 'https://images.pexels.com/photos/129733/pexels-photo-129733.jpeg');
INSERT INTO `mydb`.`personality` (`name`, `url`) VALUES ('brick', 'https://images.pexels.com/photos/1227511/pexels-photo-1227511.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500');
INSERT INTO `mydb`.`personality` (`name`, `url`) VALUES ('cotton', 'https://images.pexels.com/photos/1487713/pexels-photo-1487713.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
INSERT INTO `mydb`.`personality` (`name`, `url`) VALUES ('caoutchouc', 'https://images.pexels.com/photos/4016507/pexels-photo-4016507.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');
INSERT INTO `mydb`.`personality` (`name`, `url`) VALUES ('métal', 'https://images.pexels.com/photos/5676470/pexels-photo-5676470.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940');

INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('1', '1');
INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('2', '4');
INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('3', '2');
INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('4', '4');
INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('5', '3');
INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('6', '5');
INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('7', '2');
INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('8', '3');
INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('9', '4');
INSERT INTO `mydb`.`user_personality` (`fk_user_id`, `fk_personality_id`) VALUES ('10', '1');

