INSERT INTO Futterlager VALUES (1);
INSERT INTO Futter VALUES (1, 'Gras', 216, 1), (2, 'Stroh', 1950, 1), (3, 'Fleisch', 159.858, 1),
(4, 'Bambus', 45, 1), (5, 'Fischfutter', 1.8, 1), (6, 'Insekten', 0.3, 1), (7, 'Fruechte', 60, 1), (8,
'Wasserschnecken', 3.24, 1);
INSERT INTO Gehege VALUES (1, 'Elefantengehege', '8:00', 1), (2, 'Pandagehege', '8:30', 1),
(3, 'Loewengehege', '9:00', 1), (4, 'Zebragehege', '9:30', 1), (5, 'Giraffengehege', '10:00', 1) ,
(6, 'Aquarium', '10:30', 1),
(7, 'Tigergehege', '11:00', 1), (8, 'Schildkroetengehege', '11:30', 1), (9, 'Terarium', '12:00', 1),
(10, 'Wolfsgehege', '12:30', 1), (11, 'Krokodilgehege', '13:00', 1), (12, 'Flamingogehege',
'13:30', 1);
INSERT INTO Tiere VALUES (1, 'Helmut', 'Saeugetier', 'Elefant', 'm', 8, '23.06.2016', 'Afrika', 0,
1), (2, 'Babara', 'Saeugetier', 'Elefant', 'w', 5, '16.04.2019', 'Afrika', 0, 1), (3, 'Hanna',
'Saeugetier', 'Elefant', 'w', 10, '07.08.2014', 'Afrika', 1, 1),
 (4, 'Emily', 'Saeugetier', 'Panda', 'w', 3, '18.03.2021', 'China', 0, 2), (5, 'Bernd', 'Saeugetier',
'Panda', 'm', 3, '18.03.2021', 'China', 0, 2),
 (6, 'Simba', 'Saeugetier', 'Loewe', 'm', 6, '04.12.2018', 'Suedafrika', 0, 3), (7, 'Nala',
'Saeugetier', 'Loewe', 'w', 6, '09.12.2018', 'Suedafrika', 1, 3), (8, 'Kiara', 'Saeugetier', 'Loewe',
'w', 3, '19.07.2021', 'Suedafrika', 0, 3),
 (9, 'Marti', 'Saeugetier', 'Zebra', 'm', 7, '01.01.2018', 'Suedafrika', 0, 4), (10, 'Lilly',
'Saeugetier', 'Zebra', 'w', 6, '13.02.2019', 'Suedafrika', 0, 4),
 (11, 'Katrin', 'Saeugetier', 'Giraffe', 'w', 11, '05.05.2013', 'Ostafrika', 0, 5), (12, 'Julie',
'Saeugetier', 'Giraffe', 'w', 15, '07.08.2009', 'Ostafrika', 0, 5),
 (13, 'Malin', 'Fisch', 'Clownfisch', 'm', 4, '09.07.2020', 'Indischer Ozean', 0, 6), (14, 'Nemo',
'Fisch', 'Clownfisch', 'm', 1, '08.08.2023', 'Indischer Ozean', 0, 6),
 (15, 'Katrin', 'Saeugetier', 'Tiger', 'w', 5, '09.05.2019', 'Bali', 0, 7),
 (16, 'Hugo', 'Reptil', 'Aldabra-Riesenschildkroete', 'm', 60, '15.10.1966', 'Spanien', 0, 8),
 (17, 'Lilo', 'Amphibie', 'Feuersalamander', 'w', 7, '13.06.2017', 'Deutschland', 0, 9),
 (18, 'Bolto', 'Saeugetier', 'Wolf', 'm', 5, '29.07.2019', 'Italien', 0, 10), (19, 'Luna', 'Saeugetier',
'Wolf', 'w', 5, '26.08.2019', 'Italien', 1, 10), (20, 'Tyler', 'Saeugetier', 'Wolf', 'm', 6,
'14.06.2018', 'Italien', 0, 10),
 (21, 'Hektor', 'Reptil', 'Krokodil', 'm', 9, '18.10.2015', 'Asien', 0, 11),
 (22, 'Philipp', 'Vogel', 'Flamingo', 'm', 5, '14.07.2019', 'Afrika', 0, 12), (23, 'Lars', 'Vogel',
'Flamingo', 'm', 5, '07.11.2019', 'Afrika', 0, 12), (24, 'Karla', 'Vogel', 'Flamingo', 'w', 5,
'03.02.2020', 'Afrika', 0, 12),
 (25, 'Rosi', 'Vogel', 'Flamingo', 'w', 2, '26.01.2023', 'Afrika', 0, 12);
INSERT INTO Krankheit VALUES (1, 'Fettleibigkeit', 0, 'Ernaeuhrungsumstellung'), (2,
'Mangelerscheinung', 0, 'Ernaehoehung erhoehen'), (3, 'Verhaltensstoerung', 0, 'Verhalten
analysieren und entsprechende Massnahmen ausfuehren'),
(4, 'Depression', 0,'Mehr Zeit mit dem Tier verbringen'), (5, 'Angststoerung', 0, 'Mit dem Tier
spielen'), (6, 'Arthrose', 0, NULL), (7, 'Dermatitis', 0, NULL), (8, 'Zystitis', 0, NULL), (9,
'Aspergillose', 0, 'Regelmaeßige Gehegereinigung'),
(10, 'Chlamydiose', 1, 'Waermebehandlung'), (11, 'Magen-Darm-Strongyloidiasis', 1, NULL),
(12, 'Salmonellose', 1, 'Isolation mit Fluessigkeitszufuhr und Elektrolyte'), (13, 'Tuberkulose',
1, 'Isolation');
INSERT INTO Medikament VALUES (1, 'Isoniazid'), (2, 'Fenbendazol'), (3, 'Doxycyclin'), (4,
'Itraconazol'), (5, 'Meloxicam'), (6, 'Prednisolon');
INSERT INTO Behandlung VALUES (1, 6, 5, 0.4), (2, 7, 6, 0.7), (3, 8, 5, 0.3), (4, 9, 4, 7), (5, 10, 3,
15), (6, 11, 2, 40), (7, 13, 1, 4);
INSERT INTO Infizierung VALUES (1, 2, 13), (2, 22, 12), (3, 12, 6), (4, 18, 11), (5, 5, 4);
INSERT INTO Futtertrog VALUES (1, 1, 2, 450), (2, 2, 4, 15), (3, 3, 3, 21), (4, 4, 1, 72), (5, 5, 2,
200), (6, 6, 5, 0.6), (7, 7, 3, 20), (8, 8, 7, 20), (9, 9, 6, 0.1), (10, 10, 3, 12), (11, 11, 3, 0.286),
(12, 12, 8, 1.08);