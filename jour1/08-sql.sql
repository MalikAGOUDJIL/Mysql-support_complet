-- SQLite

-- commentaire SQL 
/* commentaire en SQL  */

-- créer une table bonjour 
-- contient 3 colonnes 
-- nom  texte maximum de 30 lettres 
-- age  chiffre entier 
-- date annee mois jour hh mm ss 

-- schéma de table 

CREATE TABLE bonjour (
    nom VARCHAR(30),
    age INT ,
    date DATETIME
)

-- requete SQL => permettant de créer une table dans la base de données 

-- il est possible d'effectuer plusieurs requêtes SQL l'un après l'autre 

/* j'ai fait un coquille => je me suis trompé dans le nom d'une colonne 
nom => nomComplet 
*/

DROP TABLE bonjour ; 
CREATE TABLE bonjour (
    nomComplet VARCHAR(30),
    age INT ,
    date DATETIME
);


/* créer 
créer une table coucou 
3 colonnes 
prenom texte qui contient maximum 100 caractères ET ne peut pas être null 
age chiffre entier et la valeur par défaut 0
etat homme / femme par défaut femme 

 */

CREATE TABLE coucou (
 prenom VARCHAR(100) NOT NULL ,
 age INT DEFAULT 0 ,
 etat BOOLEAN DEFAULT TRUE /* TRUE femme et FALSE homme */
);

-- projet 
-- projet informatique => 1 base de données 


-- projet informatique => 2 base de données 

CREATE TABLE coucou (
 toto VARCHAR(100) NOT NULL ,
 age INT DEFAULT 0 ,
 tata BOOLEAN DEFAULT TRUE /* TRUE femme et FALSE homme */
);


function calcul ($x, $y){
    return $x + $y ;
}

calcul (10, 20); // 30

calcul ();   // erreur 
calcul (null, null);   // erreur 
calcul (0, 0);   // 0 

// 0 === null (absence d'information)

function soustraction ($x = 0, $y = 0){ // par défaut si absence de valeur = 0
    return $x - $y ;
}

soustraction (10, 5) // 5
soustraction () // 0

-- créer une base
-- créer tables
-- créer des colonnes

/* .schema etudiants ; */


-- dans une table 
-- créer une colonne spéciale / technique qui permet de distinguer les lignes que l'on va ajouter dans notre table
-- colonne nom spéciale => clé primaire => Primary Key (PK)

-- toto tata
-- id 

-- créer une nouvelle table recette 
-- id clé primaire
-- titre chaine de caractère de maximum 200 caractères default "recette ..."
-- prix chiffre à virgule par défaut 0
-- dt_publication format date annee mois jour par défaut maintenant

-- SQLITE

CREATE TABLE recette (
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT , /* PK */
    titre VARCHAR(200) DEFAULT "recette ..." ,
    prix FLOAT DEFAULT 0 ,
    dt_publication DATE DEFAULT CURRENT_DATE
)

-- mySql MariaDB

CREATE TABLE recette (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    titre VARCHAR(200) DEFAULT "recette ..." ,
    prix FLOAT DEFAULT 0 ,
    dt_publication DATE DEFAULT CURRENT_DATE
)

-- INT => entier
-- FLOAT => chiffre à variable flottante (chiffre à virgule) 

-- dès que l'on va voir les ajouts de lignes dans les tables 

-- cas pratique 
-- créer une nouvelle table exo3
-- contenant plusieurs colonnes 
-- id clé primaire
-- duree chiffre entier par défaut valeur est = 0
duree INT DEFAULT 0 
-- prix chiffre à virgule par défaut valeur est = 30 
-- auteur texte maximum de 30 lettres par défaut valeur est "Alain"
-- dt_creation date au format AAAA MM JJ HH MM SS par défaut c'est maintenant  


CREATE TABLE exo3(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    duree INT DEFAULT 0 ,
    prix FLOAT DEFAULT 30 ,
    auteur VARCHAR(30) DEFAULT "Alain",
    dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP 
);
/* structure de la table exo3 */

DROP TABLE exo3 ;
CREATE TABLE exo3(
    id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    duree INT DEFAULT 0 ,
    prix FLOAT DEFAULT 30 ,
    auteur VARCHAR(30) DEFAULT "Alain",
    dt_creation DATETIME DEFAULT "2022-08-01 00:00:00"
);

/* Ajouter des lignes dans nos tables*/

INSERT INTO exo3 (  ) VALUES (  ) ;

// rdv 15h35 bon café !!!! 

-- https://sqlite.org/lang_createtable.html