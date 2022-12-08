/*REQUETES SIMPLES */

/* • Lister toutes les données de la table SEGMENT */
SELECT * FROM segment

/* •Lister les postes dont le type est UNIX */
SELECT * FROM poste WHERE type_poste = 'UNIX';

/* • Lister les logiciels dont la date d’achat est antérieure au 31/12/2021 */
SELECT * FROM logiciel l  WHERE date_achat < '31/12/2021';

/* • Lister tous les logiciels dont le type est PCWS */
SELECT * FROM logiciel WHERE type_logiciel = 'PCWS';

/* • Lister les postes dont le type de segment est 130.120.80 */
SELECT * FROM poste WHERE n_segment = '130.120.80';

/* • Lister les postes contenus dans les salles s01 et s03 */
SELECT * FROM poste WHERE n_salle = 'S01' OR n_salle = 'S03';