/*• Lister tous les types de postes n’existant pas dans le parc informatique */
SELECT type_lp FROM "TYPE" EXCEPT SELECT type_poste FROM poste
/*• Lister les types existants à la fois comme poste et comme logiciel*/
SELECT type_logiciel FROM logiciel
INTERSECT
SELECT type_poste FROM poste
/*• Lister les types qui existent en tant que poste mais pas en tant que logiciel*/
SELECT type_poste FROM poste
EXCEPT
SELECT type_logiciel FROM logiciel
/*• Lister les ip des postes qui contiennent le logiciel « Log6 »*/
SELECT
	n_segment
FROM
	poste
NATURAL JOIN installer
WHERE
    n_logiciel = 'Log6'

/*• Lister les ip des postes qui contiennent le logiciel de nom « Oracle 9i »*/
SELECT
	*
FROM
	poste
NATURAL JOIN installer
WHERE
	n_logiciel = (
	SELECT
		n_logiciel
	FROM
		logiciel
	WHERE
		nom_logiciel = 'Oracle 9i'
	    
		)

/*• Lister le nom des segments possédant exactement trois postes de type TX*/
SELECT
	nom_segment
FROM
	segment
NATURAL JOIN POSTE
WHERE
	n_segment = '130.120.80'
	AND type_poste = 'TX'

/*• Lister le nom des salles où l’on peut trouver au moins un poste avec le logiciel « Oracle 10g » installé*/
SELECT
	nom_salle
FROM
	salle
NATURAL JOIN poste
WHERE
	n_poste in (
	SELECT
		n_poste
	FROM
		installer
	WHERE
		n_logiciel = (
		SELECT
			n_logiciel
		FROM
		   logiciel
		 WHERE
		 nom_logiciel = 'Oracle 10g'
			))
