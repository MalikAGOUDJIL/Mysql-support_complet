-- déconseillé de mettre de caractères accentués
-- déconseillé de mettre des majuscules
-- déconseillé de mettre des espaces
-- déconseillé de mettre des caractères spéciaux . + / - *
-- vous pouvez utiliser le symbole _ tiret bas / underscore

CREATE TABLE salle_reunion ( 
 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT ,
 nom VARCHAR(100) NOT NULL,
 capacite INT DEFAULT 5 
);

-- base de données
-- sgbd 
-- sql 
-- créer une table qui dispose de 3 colonnes 

-- ajouter des lignes / enregistrement dans cette table 

INSERT INTO salle_reunion 
( nom , capacite ) /* préciser la liste des colonnes dans lesquelles on veut ajouter des informations */
VALUES 
( "Premier salle de réunion" , 10 );


-- requête de lecture => voir le contenu de la table salle_reunion

SELECT * FROM salle_reunion ; 

-- 
-- créer la table exo4
-- id clé primaire
-- titre texte maximum de 20 lettres
-- description texte > 255 caractères
-- dt_creation DATE par défaut valeur de maintenant
-- capacité chiffre entier 

DROP TABLE IF EXISTS exo4 ; 

CREATE TABLE exo4( 
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    titre VARCHAR(20),
    description TEXT ,
    dt_creation DATE DEFAULT CURRENT_DATE ,
    capacite INT
);

-- ajouter 2 lignes dans cette table 
-- titre "bonjour les amis"
-- description "lorem ipsum"
-- dt_creation aujourd'hui 
-- 20  

INSERT INTO exo4 
( titre , description , dt_creation , capacite)
VALUES 
( "bonjour les amis" , "lorem ipsum" , "2022-08-16", 20) ;

-- je ne mets pas la colonne dt_creation => DEFAULT CURRENT_DATE 
INSERT INTO exo4 
( titre , description  , capacite)
VALUES 
( "bonjour les amis" , "lorem ipsum" ,  20) ;

--erreur j'ai le nom de la colonne mais pas de valeur 
INSERT INTO exo4 
( titre , description , dt_creation , capacite)
VALUES 
( "bonjour les amis" , "lorem ipsum" ,  , 20) ;

-- titre "comment allez vous ??"
-- description "lorem ipsum"
-- dt_creation hier 
-- 3

INSERT INTO exo4 
( titre , description , dt_creation , capacite)
VALUES 
( "comment allez vous ??" , "lorem ipsum" , "2022-08-15", 3) ;

-- afficher le contenu de cette table via une requête SELECT

SELECT * FROM exo4 ;

// near 

-- créer la table exo5
-- id clé primaire
-- nom lettre maximum de 20 par défaut "bonjour"
-- status vrai / faux par défaut false
-- dt_publication annee jour mois 
-- prix chiffre à virgule 

DROP TABLE exo5 ;

CREATE TABLE exo5(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(20) DEFAULT "bonjour",
    status BOOLEAN DEFAULT FALSE ,
    dt_publication DATE DEFAULT CURRENT_DATE ,
    prix FLOAT
);

-- DATE => stocker dans colonne dt_publication "AAAA-MM-JJ"
-- DATETIME => stocker dans colonne dt_publication "AAAA-MM-JJ HH:MM:SS"

-- insérer des données dedans 3 lignes

INSERT INTO exo5 
( nom , status  , prix)
VALUES 
("alain" , FALSE, 12.5),
("Béatrice" , TRUE ,  35.8);

INSERT INTO exo5 
( nom  , dt_publication  , prix)
VALUES 
("Céline"  , "2022-08-15",  12.99);

-- "alain"  false aujourd'hui 12.5
-- "Béatrice"  vrai aujourd'hui 35.8
-- "Céline"  false hier 12.99

-- => afficher le contenu de la table via une requête SELECT
SELECT * FROM exo5 ;

=> VALEUR => DATE 
-- 2022-08-16

=> VALEUR => DATETIME
-- 2022-08-16 17:00:00


=> FORMAT
-- 16 Aout 
-- 16 Aout 2022
-- 16 Aout 2022 16h59
-- Aout 
-- 16/08/2022 (fr)
-- 08/16/2022 (en)

CRUD => 

CREATE INSERT
Read SELECT
UPDATE UPDATE
DELETE DELETE 