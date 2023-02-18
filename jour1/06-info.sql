-- SQLite
-- <!-- --->
-- /*  */
-- commentaire en sql 
-- premier requête sql permettre de créer une table 
-- qui s'appelle etudiants 
-- et cette table contient 2 colonnes 
-- prenom
-- nom 

-- CREATE 
-- TABLE 


CREATE TABLE etudiants (
    prenom TEXT ,
    nom TEXT 
);

-- exo 
-- créer une nouvelle table dans votre base de données 
-- qui s'appelle exo1 
-- contient 4 colonnes 
-- titre 
-- description
-- auteur
-- like

-- ces quatre colonnes sont de types TEXT


-----------------------------------
-----------------------------------
-----------------------------------

CREATE TABLE exo1 (
    titre TEXT ,
    description TEXT ,
    auteur TEXT ,
    like TEXT
)

--- 
--- 
--- créer des tables dans une base de données 
-- colonnes associées à un type => ce que l'on va stocker comme données dans cette colonne de la table 

-- text 
-- TEXT => stocker dans le colonne concernée beaucoup de texte
-- VARCHAR(20) => texte qui aura au maximum 20 caractères  

-- chiffre
-- INT => chiffre entier 1 2 -1 0 1000000 => 2^32 soit 4 milliards
-- FLOAT => chiffre à virgule 
-- BOOLEAN => 0 ou 1 

-- date
-- DATE => AAAA-MM-JJ
-- TIME => HH:MM:SS
-- DATETIME =>  AAAA-MM-JJ HH:MM:SS

-- créer une table formation contenant 5 colonnes

-- nom => texte maximum de 30 lettres
-- duree => chiffre entier
-- dt_debut => date ANNEE MOIS jours
-- description => grande quantite de lettre
-- online : vrai / faux 

CREATE TABLE formation (
    nom VARCHAR(30), -- possible de mettre TEXT 
    duree INT ,
    dt_debut DATE ,
    description TEXT ,
    online BOOLEAN
)

-- cas pratique 
-- créer une nouvelle table exo2 qui contient des colonnes 
-- titre texte maximum de 100 caractères
-- like chiffre entier
-- dt_publication ANNEE MOIS jours heure minutes secondes 
-- contenu texte supérieur à 255 caractères 
-- etat publié / non publié
-- resume texte maximum de 255 caractères

CREATE TABLE exo2 (
    titre VARCHAR(100) ,
    like INT ,
    dt_publication DATETIME ,
    contenu TEXT ,
    etat BOOLEAN ,
    resume VARCHAR(255) 
)

--------------

CREATE TABLE exo2 (
    titre VARCHAR(100) ,
    like INT ,
    dt_publication DATETIME ,
    conten TEXT , -- je me suis trompé dans le nom d'une colonne 
    etat BOOLEAN ,
    resume TEXT  -- je me suis trompé dans le type d'une colonne VARCHAR(255)
)

-- technique 1 : SQLITE et sur MySQL Mariadb

-- supprimer la table
DROP TABLE exo2 ; 

-- recréer de nouveau la table
CREATE TABLE exo2 (
    titre VARCHAR(100) ,
    like INT ,
    dt_publication DATETIME ,
    contenu TEXT , /* je me suis trompé dans le nom d'une colonne */
    etat BOOLEAN ,
    resume VARCHAR(255)  /* je me suis trompé dans le type d'une colonne VARCHAR(255) */
)

-- technique 2 : fonctionne sur MySQL Mariadb 
-- mais ne fonctionne pas sur SQlite 

ALTER TABLE exo2 
    MODIFY resume VARCHAR(255) , /* modifier le type d'une colonne existante */
    ADD contenu TEXT , /* ajouter une colonne */
    DROP COLUMN conten /* supprimer une colonne*/







