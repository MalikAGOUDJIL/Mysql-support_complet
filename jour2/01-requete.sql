/*
créer une première table articles 
clé primaire 
titre texte maximum de 200 lettres 
contenu texte > 255 lettres
etat publié / brouillon (que 2 états possibles)
nb_commentaire chiffre entier par défaut vaut 0 
dt_publication date au format aaaa-mm-jj 
*/

CREATE TABLE articles (
 id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
 titre VARCHAR(200),
 contenu TEXT ,
 etat BOOLEAN ,
 nb_commentaire INT DEFAULT 0 ,
 dt_publication DATE 
);

-- insérer les données dans la table articles 

INSERT INTO articles
(titre , contenu , etat , nb_commentaire , dt_publication)
VALUES
("article 1 PHP" , "lorem ipsum", TRUE , 2, "2022-08-17"),
("article 2 JS" , "lorem ipsum ", FALSE , 8, "2022-08-01"),
("article 3 HTML" , "lorem ipsum", FALSE , 9, "2020-08-17"),
("article 4 CSS" , "lorem ipsum", TRUE , 2, "2021-08-17"),
("article 5" , "lorem ipsum", FALSE , 10, "2022-08-01"),
("article 6 HTML" , "lorem ipsum", TRUE , 45, "2022-08-02"),
("article 7 CSS HTML" , "lorem ipsum", TRUE , 2, "2022-08-03"),
("article 8 PHP CSS HTML" , "lorem ipsum", FALSE , 0, "2022-08-17");

SELECT * FROM articles ;

=> CRUD => 4 opérations de base que l'on va réaliser via le langage SQL 

TABLE 

Create => INSERT INTO 
Read   => SELECT ******
Update => UPDATE ******
Delete => DELETE ******


SELECT mot clé de SQL très puissant 
récupérer des valeurs stockées dans une table ET faire des recherches !!! 

--- récupérer l'ensemble des colonnes de ma table articles 

SELECT * FROM articles ;

--- récupérer dans la table articles toutes les lignes sur 3 colonnes titre , contenu et nb_commentaire

SELECT titre , contenu , nb_commentaire FROM articles ;

-- cas pratique afficher pour l'ensemble des lignes de la table articles les colonnes suivantes 
-- titre , etat , nb_commentaire 

SELECT titre , etat , nb_commentaire 
FROM articles ;

-- SELECT ne crée pas de nouvelle table => elle pioche ses informations dans la table articles 
-- ATTENTION ne pas mettre de virgule après la dernière colonne du SELECT et avant le FROM
-- vous pouvez écrire votre requête SELECT sur 1 seule ligne mais il est possible de l'écrire sur plusieurs lignes


-- afficher les articles qui dont le nombre de commentaire = 0

SELECT * 
FROM articles 
WHERE nb_commentaire = 0;

-- WHERE mot clé qui permet de rechercher / filtrer les résultats
-- AFFICHAGE => SELECT ET FILTRAGE via WHERE


-- afficher l'ensemble des articles qui sont en état publié => 1 dans la colonne etat

-- solution 1
SELECT *
FROM articles
WHERE etat = TRUE ;

-- solution 2
SELECT *
FROM articles
WHERE etat = 1 ;

-- afficher le titre , contenu des articles non publiés 

SELECT titre , contenu , nb_commentaire 
FROM articles 
WHERE etat = FALSE ;

-- cumuler les recherches dans la clause WHERE 
-- afficher tous les articles qui sont publiés ET qui ont un nombre de commentaire > 2

SELECT *
FROM articles 
WHERE etat = TRUE AND nb_commentaire > 2;

------------------
AS 
ORDER BY
LIMIT 

-- rdv 10h45 => @ toute suite !!!!!!!!



