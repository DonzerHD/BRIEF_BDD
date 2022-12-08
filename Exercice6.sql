/* GROUPE */
/*• Compter le nombre de postes de chaque type */
SELECT
    type_poste,
    COUNT(type_poste)
FROM
    poste
GROUP BY
    type_poste;
/* • Compter le nombre de logiciels installés par année */

