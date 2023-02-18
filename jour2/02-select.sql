
-- recupérer des données stockées dans le table articles 
-- et de renommer les colonnes du résultats

-- récupérer tous les articles qui ont 2 commentaires

SELECT titre AS `titre complet`
FROM articles 
WHERE nb_commentaire = 2 ;

-- ' apostrophe 
-- " guillemet
-- ` backtick => altGr (droite) + 7 (clavier numérique au dessus des lettres)

-- attention le mot clé AS ne modifie pas le nom de la colonne dans la table articles 

SELECT * FROM articles ;

-- cas pratique 
-- récupérer tous les articles qui sont publiés 
-- renommer la colonne nb_commentaire => nombre commentaires publiés
-- renommer la colonne dt_publication => publié le 

SELECT titre , 
       nb_commentaire AS `nombre commentaires publiés` , 
       dt_publication AS `publié le`
FROM articles 
WHERE etat = TRUE ;

-- il est possible d'ajouter plusieurs conditions en même temps dans la claure WHERE via le mot clé AND


SELECT * 
FROM articles
WHERE etat = FALSE AND nb_commentaire = 0 ;

-- comme dans PHP ou Javascript il est possible d'utiliser des opérateurs de comparaison

-- $x = 10 ; opérateur d'affectation 
-- $y = 30 ;

-- $x == $y en PHP / javascript comparaison

-- en SQL  ou === n'existe pas 
-- quand on veut comparer une colonne à une valeur = ou ==

-- comparer des chiffres avec des colonnes

-- = == égal
-- >  supérieur strictement
-- < inférieur strictement
-- <= inférieur ou égal
-- >= supérieur ou égal
-- <> différent
-- != différent

SELECT * 
FROM articles
WHERE nb_commentaire == 0 ;

SELECT * 
FROM articles
WHERE nb_commentaire != 0 ;

-- BETWEEN => Entre 
-- récupérer tous les articles dont le nombre de commentaire est entre 2 et 10 

SELECT * 
FROM articles
WHERE nb_commentaire BETWEEN 2 AND 10  ;

SELECT * 
FROM articles
WHERE nb_commentaire >= 2 AND nb_commentaire <= 10  ;

-- afficher tous les articles qui ont entre 5 et 20 commentaires 
-- renommer la colonne titre  par titre complet article 
-- renommer la colonne nb_commentaire  par nombre commentaires

SELECT titre AS `titre complet article ` , 
       nb_commentaire AS `nombre commentaires` 
FROM articles 
WHERE nb_commentaire BETWEEN 5 AND 20; 

-- tous les opérateurs de comparaison fonctionnent AUSSI avec des dates


-- tous les articles publiés le 1er Aout ???

SELECT * 
FROM articles 
WHERE dt_publication > "2022-08-01" ;

-- tous les articles publiés entre le 1er et 10 Août ???

SELECT * 
FROM articles 
WHERE dt_publication BETWEEN "2022-08-01" AND "2022-08-10" ;


-- récupérer tous les articles publié en 2020 ??

-- solution 1
SELECT * 
FROM articles 
WHERE dt_publication BETWEEN "2020-01-01" AND "2020-12-31" ;

-- mySQL / MariaDB
SELECT * 
FROM articles 
WHERE YEAR(dt_publication) = 2020 ;

-- SQLITE
SELECT * 
FROM articles 
WHERE strftime("%Y", dt_publication ) = "2020" ;

-- cas pratique 

-- récupérer tous les articles 
-- qui ont été publié le 1er du mois d'aout 
-- et qui sont en état publié true 
-- documentation = https://sqlite.org/lang_datefunc.html


SELECT *
FROM articles 
WHERE etat = TRUE AND dt_publication = "2022-08-01";

-- tous les articles publiés le 02 du mois quelque soit le mois et l'année
SELECT *
FROM articles 
WHERE etat = TRUE AND strftime( "%d" ,dt_publication) = "01";

-- tous les articles publiés le 02 du mois d'août quelque soit l'année

SELECT *
FROM articles 
WHERE etat = TRUE AND 
      strftime( "%d" ,dt_publication) = "02" AND  
      strftime( "%m" ,dt_publication) = "08";

-- WHERE => filtre = enlever tout ce qui ne vérifie les conditions écrites dans la clause WHERE
-- publication en 2020 ou en 2021

SELECT *
FROM articles 
WHERE strftime( "%Y" ,dt_publication) = "2020" OR  
      strftime( "%Y" ,dt_publication) = "2021";


SELECT *
FROM data 
WHERE titre = "livre" AND langue  = "fr" ;


=> référencé => ajouté dans la base de données de google 
=> indexé => ajouté dans la base de données de google 
=> INSERT  => ajouté dans la base de données de google 

-- rechercher tous les articles qui contiennent le mot PHP

SELECT * 
FROM articles 
WHERE titre = "PHP"; -- exactement PHP 


SELECT * 
FROM articles 
WHERE titre LIKE "%PHP%"; -- contient PHP

-- cas pratique 
-- afficher liste des articles dont titre contient soit HTML soit PHP 
-- renommer la colonne titre par titre article
-- renommer la colonne dt_publication par date 

SELECT titre AS `titre article` , dt_publication AS `date`
FROM articles 
WHERE titre LIKE "%HTML%" OR titre LIKE "%PHP%" ;


SELECT titre AS `titre article` , dt_publication AS `date`
FROM articles 
WHERE `titre article` LIKE "%HTML%" OR titre LIKE "%PHP%" ;

-- possible d'utiliser l'Alias comme colonne pour le filtrage WHERE
-- le renommage des colonnes se fait dans le SELECT et ne peut pas être réalisé dans le WHERE 

-- IN
-- ORDER BY
-- LIMIT
-- rdv 13h40 !!! bon appétit  !!!!!!!!!!

