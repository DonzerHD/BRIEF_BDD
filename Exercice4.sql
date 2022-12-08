/* CREATION TABLE TYPE */

CREATE TABLE "TYPE"(
  TYPE_LP VARCHAR(7) PRIMARY KEY,
  NOM_TYPE VARCHAR(20)
);

/* AJOUTE LES DONNEES */

INSERT INTO "TYPE" (type_lp, nom_type)
  VALUES
    ( 'TX', 'Terminal X-WINDOW'),
	  ('UNIX', 'Système Unix'),
	  ('PCXP', 'PC Windows XP'),
	  ('PCWS', 'PC Windows Server'),
	  ('NC', 'Network Computer')


/* Une contrainte de clé étrangère devra être créé entre cette table et les tables POSTE et LOGICIEL */

ALTER TABLE poste 
ADD FOREIGN KEY (type_poste) REFERENCES "TYPE"(type_lp);

ALTER TABLE logiciel
ADD FOREIGN KEY (type_logiciel) REFERENCES "TYPE"(type_lp);

