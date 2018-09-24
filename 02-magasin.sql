
    =>  mysql -u root -p
    =>  show databases;

    -- Exercice: Créé une base de données magasin 
    =>  create database magasin;
    =>  USE magasin;

    -- Créé une table produit qui contient les colonnes suivantes:
    -- id -> INT PRIMARY KEY AUTO_INCREMENT NOT NULL 
    -- nom_produit -> débrouillez-vous 
    -- catégorie_produit -> débrouillez-vous 
    -- reference_produit
    -> débrouillez-vous 
    -- prix_produit -> débrouillez-vous 
    -- stock_produit -> débrouillez-vous 
    -- date_ajout -> débrouillez-vous

    =>  CREATE TABLE produit(
                                id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
                                nom_produit VARCHAR(200), 
                                catégorie_produit VARCHAR(200), 
                                reference_produit VARCHAR(200), 
                                prix_produit FLOAT, 
                                stock_produit INT(100), 
                                date_ajout DATE
                            );

    
    
    -- Insérer au moins 20 produits 
    =>  INSERT INTO produit VALUES ('', 'produit1', 'sport', 'sports', '10.05', '100', '2018-09-18');

    -- Afficher tous les produits classé du plus récent au plus ancien
    =>  SELECT * FROM produit ORDER BY id=20 DESC LIMIT 20;

    -- Afficher les 10 premiers produits 
    =>  SELECT * FROM produit LIMIT 10;

    -- Afficher les 10 derniers produits 
    =>  SELECT * FROM produit LIMIT 10,20;

    -- Ajouter une colonne date_vente 
    =>  ALTER TABLE produit ADD date_vente DATE;

    -- Afficher les produits entre 2 date de vente 
    =>  SELECT * FROM produit WHERE date_ajout BETWEEN '2016-12-09' AND '2017-12-09';

    -- Afficher les 10 derniers produits 
    =>  SELECT * FROM produit LIMIT 10,20;

    -- Afficher les 10 produits du milieu 
    =>  SELECT * FROM produit LIMIT 5,15;

    -- Afficher les produits commencent par une lettre spécifique
    =>  SELECT * FROM produit WHERE catégorie_produit LIKE 's%';
