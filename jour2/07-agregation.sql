-- agrégation => agréger 
-- fusionner plusieurs lignes d'une table 

-- créer une nouvelle table ventes 
CREATE TABLE ventes(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(100),
    prix FLOAT ,
    etat_livre BOOLEAN ,
    dt_creation DATE
);

INSERT INTO ventes 
( nom , prix , etat_livre , dt_creation )
VALUES 
("produit 1", 30.5 , TRUE , "2022-08-17"),
("produit 1", 120.5 , FALSE , "2022-08-01"),
("produit 2", 22.2 , TRUE , "2022-08-01"),
("produit 3", 15.0 , FALSE , "2022-08-02"),
("produit 2", 6.4 , FALSE , "2022-08-17");


SELECT * FROM ventes ;

-- quelle est le chiffre d'affaires réalisé ??
-- somme des montants de la colonne prix 

-- SQL met à disposition des fonctions d'agrégation => agrégé les lignes => fusionner en 1 seule ligne 

SELECT SUM(prix) AS `chiffre d'affaires total`
FROM ventes ;

-- fusion des 5 lignes en 1 seule 

-- clause à utiliser uniquement lorsque l'on utilise des fonctions d'agrégation
-- GROUP BY

produit 1 => 
produit 2 => 
produit 3 => 

SELECT  nom , SUM(prix) AS `total par produit`
FROM ventes 
GROUP BY nom ;

-- cas pratique
-- pour la table ventes afficher le chiffre d'affaire réalisé par dt_creation  
-- trier par ordre croissant de date ancienne à la plus récente 

SELECT dt_creation , SUM(prix) AS `vente par date`
FROM ventes
GROUP BY dt_creation ;

-- trié de plus récent au plus ancien !!

SELECT dt_creation , SUM(prix) AS `vente par date`
FROM ventes
GROUP BY dt_creation 
ORDER BY dt_creation DESC ;


-- 1 seule articles / ventes => requête qui touche / manipule 1 seule table 
-- requete qui manipulent plusieurs tables en même temps => liaison / jointure 
-- SGBD => MySQL 

-- PME => projet (PHP) + base de données 

$array = [

];

-- Grande structure => equipe (projet) + equipe infrastructure (serveur spécialisé stockage des datas)

-- transformation mapping 
-- internet => base de données SQLITE => txt (mail) 
                                      => xml (logiciel gestion) 
                                      => json (app mobile) 
                                      => MySQL 
                                      => yaml 
                                      => SQLITE 


<produit>
    <ligne>
        <nom>produit 1</nom>
        <prix>30.5</prix>
        <etat>TRUE</etat>
        <dt>2022-08-17</dt>
    </ligne>
    <ligne>
        <nom>produit 1</nom>
        <prix>30.5</prix>
        <etat>TRUE</etat>
        <dt>2022-08-17</dt>
    </ligne>
    <ligne>
        <nom>produit 1</nom>
        <prix>30.5</prix>
        <etat>TRUE</etat>
        <dt>2022-08-17</dt>
    </ligne>
</produit>