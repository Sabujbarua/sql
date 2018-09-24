-- Connexion server mysql 
mysql -u root -p
-- Affichages de toutes les bdd
SHOW DATABASES;
-- Création d'une bdd
CREATE DATABASE NOM_DE_LA_BDD;
-- Séléction d'une bdd
USE NOM_DE_LA_BDD;
-- Création d'une table dans une bdd
-- Type de donnée(INT, VARCHAR, TEXT, DECIMAL, etc)
CREATE TABLE nom_de_la_bdd (
	nom_colonne1 type_de_donnée,
	nom_colonne2 type_de_donnée,
	nom_colonne3 type_de_donnée,
	nom_colonne4 type_de_donnée
);
-- Insertion dans la table(Méthode 1)
INSERT INTO nom_de_la_table VALUES (
	'valeur',
	'valeur',
	'...'
);
-- Insertion dans la table(Méthode 2) 
INSERT INTO nom_de_la_table (
	colonne
	colonne) VALUES (
	'valeur',
	'valeur2'
);

-- Afficher toutes les tables
SHOW TABLES;
-- Séléctionné toutes les données d'une table
SELECT * FROM nom_de_la_table;
-- Séléctionné les données d'une ou pllusieurs colonnes spécifique d'une table
SELECT nom_colonne, nom_colonne2 FROM nom_de_la_table;
-- Supprimer une ligne de la table avec unne condition WHERE
DELETE FROM nom_de_la_table WHERE condition;
TRUNCATE nom_de_la_table WHERE condition;
-- Mettre à jour une colonne d'une table
UPDATE nom_de_la_table SET nom_colonne = 'valeur'WHERE condition;
UPDATE salarie SET date_naissance= '1988-04-09' WHERE id=125;
-- Mettre à jour plusieurs colonnes d'une table
UPDATE salarie SET nom= 'diarra', prenom= 'samba' WHERE id=126;
ALTER TABLE nom_de_la_table ADD nom_colonne type_de_donnée;
ALTER TABLE salarie ADD telephone VARCHAR(10);
-- Modification d'une table existante
ALTER TABLE nom_de_la_table MODIFY nom_colonne type_de_donnée attributs;
ALTER TABLE salarie MODIFY telephone INT(10);
-- Afficher les avertissements
SHOW WARNINGS;
-- Opérateur de comparaison

= Égale
<> Pas égale
!= Pas égale
> Supérieur à
< Inférieur à
>= Supérieur ou égale à
<= Inférieur ou égale à
IN Liste de plusieurs valeurs possibles
BETWEEN Valeur comprise dans un intervalle donnée (utile pour les nombres ou dates)
LIKE Recherche en spécifiant le début, milieu ou fin d'un mot.
IS NULL Valeur est nulle
IS NOT NULL Valeur n'est pas nulle
-- Séléctionne les données entre(BETWEEN) un intervalle(fonctionne dans une requête utilisant WHERE)
SELECT * FROM salarie WHERE date_naissance BETWEEN '1901-01-01' AND '1980-12-31';
SELECT * FROM salarie WHERE date_naissance NOT BETWEEN '1901-01-01' AND '1980-12-31';
SELECT * FROM salarie WHERE date_naissance= '0000-00-00' OR '1234-12-25';
-- Pour éviter des redondances dans les résultats
SELECT DISTINCT nom_colonne FROM nom_de_la_table;
SELECT DISTINCT adresse FROM salarie;
-- Pour grouper plusieurs résultats | La fonction SUM() permet d’additionner la valeur de chaque salaire pour une même adresse
SELECT adresse, SUM(salaire) FROM salarie GROUP BY adresse;
-- Trier les lignes dans un résultat d’une requête SQL
SELECT nom, prenom FROM salarie ORDER BY date_naissance DESC;


-- Vérifier si une colonne est égale à une des valeurs comprise dans le set de valeurs déterminés.
SELECT nom_colonne FROM table WHERE nom_colonne IN ( valeur1, valeur2);
SELECT * FROM salarie WHERE prenom IN ('s', 'maude');

SELECT * FROM table LIMIT la_limite;
SELECT* FROM salarie LIMIT 2;

SELECT * FROM table LIMIT offset, la_limite;
SELECT * FROM salarie LIMIT 1, 2;
-- Toutes les entrées qui finnisent par un "a"
SELECT * FROM salarie WHERE nom LIKE '%a';
-- Toutes les entrées qui commence par un "a"
SELECT * FROM salarie WHERE nom LIKE 'a%';
-- Toutes les entrées qui continnent "a"
SELECT * FROM salarie WHERE nom LIKE '%a%';
-- toutes les entreés qui commence par "po", contiennent "a" et finissent par "nt"
SELECT * FROM salarie WHERE nom LIKE 'po%a%nt';

SELECT * FROM salarie WHERE nom LIKE 'a_c';


-- Exercice: Créé une base de données magasin
-- Créé une table produit qui contient les colonnes suivantes:
-- id -> INT PRIMARY KEY AUTO_INCREMENT NOT NULL
-- nom_produit -> débrouillez-vous
-- catégorie_produit -> débrouillez-vous
-- reference_produit -> débrouillez-vous
-- prix_produit -> débrouillez-vous
-- stock_produit -> débrouillez-vous
-- date_ajout -> débrouillez-vous
-- Insérer au moins 20 produits
-- Afficher tous les produits classé du plus récent au plus ancien
-- Afficher les 10 premiers produits
-- Afficher les 10 derniers produits
-- Ajouter une colonne date_vente
-- Afficher les produits entre 2 date de vente
-- Afficher les 10 derniers produits
-- Afficher les 10 produits du milieu
-- Afficher les produits commencent par une lettre spécifique
