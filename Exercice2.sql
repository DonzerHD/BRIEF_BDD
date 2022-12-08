/* CREATION DES DONNEES*/
INSERT INTO SEGMENT (N_SEGMENT, NOM_SEGMENT)
     VALUES
    ('130.120.80', 'segment 80'),
    ('130.120.81', 'segment 81'),
    ('130.120.82','segment 82');


INSERT INTO SALLE(N_SALLE, NOM_SALLE, NB_POSTE, N_SEGMENT)
      VALUES
    ('S01', 'Salle 1', 3, '130.120.80'),
    ('S02', 'Salle 2', 2, '130.120.80'),
    ('S03', 'Salle 3', 2, '130.120.80'),
    ('S11', 'Salle 11', 2, '130.120.81'),
    ('S12', 'Salle 12', 1, '130.120.81'),
    ('S21', 'Salle 21', 2, '130.120.82');


INSERT INTO POSTE(N_POSTE, nom_poste, n_segment, ad, type_poste)
      VALUES 
     ('P1', 'Poste 1', '130.120.80','01', 'TX', 'S01'),
	 ('P2','Poste 2', '130.120.80', '02', 'UNIX', 'S01'),
	 ('P3', 'Poste 3', '130.120.80', '03', 'TX', 'S01'),
	 ('P4', 'Poste 4', '130.120.80', '04', 'PCWS', 'S02'),
	 ('P5', 'Poste 5', '130.120.80', '05', 'PCWS', 'S02'),
	 ('P6', 'Poste 6', '130.120.80', '06', 'UNIX', 'S03'),
	 ('P7', 'Poste 7', '130.120.80', '07', 'TX', 'S03'),
	 ('P8', 'Poste 8', '130.120.81', '01', 'UNIX', 'S11'),
	 ('P9', 'Poste 9', '130.120.81', '02', 'TX', 'S11'),
	 ('P10', 'Poste 10', '130.120.81', '03', 'UNIX', 'S12'),
	 ('P11', 'Poste 11', '130.120.82', '01', 'PCXP', 'S21'),
	 ('P12', 'Poste 12', '130.120.82', '02', 'PCXP', 'S21');


INSERT INTO LOGICIEL(N_LOGICIEL, NOM_LOGICIEL , DATE_ACHAT, VERSION, TYPE_LOGICIEL)
      VALUES
    ('Log1', 'Oracle 9i', '13/05/2021', '9.2', 'UNIX'),
    ('Log2', 'Oracle 10g', '15/09/2020', '10.1', 'UNIX'),
    ('Log3', 'Sql Server', '12/04/2022', '2020SE', 'PCXP'),
    ('Log4', '4D', '03/06/2020', '2019.4' ,'PCXP'),
    ('Log5', 'Windev', '12/11/2021', '10', 'PCWS'),
    ('Log6', 'Sql*Net', '13/05/2021' ,'2.5', 'UNIX'),
    ('Log7', 'I. I. S.' ,'12/04/2020', '6.0', 'PCXP'),
    ('Log8', 'Autocad' ,'21/03/2022', 'AU2019', 'PCWS');

INSERT INTO INSTALLER(N_POSTE, N_LOGICIEL, DATE_INST)
      VALUES
    ('P2', 'Log1', '15/05/2021'),
    ('P2', 'Log2', '17/09/2020'),
    ('P4', 'Log5', '30/05/2022'),
    ('P6', 'Log6', '20/05/2021'),
    ('P6', 'Log1', '20/05/2021'),
    ('P8', 'Log2', '19/05/2021'),
    ('P8', 'Log6', '20/05/2021'),
    ('P11', 'Log3', '20/04/2022'),
    ('P12', 'Log4','20/06/2020'),
    ('P11', 'Log7', '20/04/2022');

