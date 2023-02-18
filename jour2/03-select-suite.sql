
-- attention à l'ordre des clauses dans le SELECT

SELECT * 
FROM articles 
WHERE id = 1 ;

-- ATTENTION le FROM est après le SELECT 
-- le WHERE est toujours à ajouter après le FROM 

-- les articles qui ont 2 ou 8 ou 9 commentaires 

SELECT *
FROM articles 
WHERE nb_commentaire = 2 OR nb_commentaire = 8 OR nb_commentaire = 9 ;

-- autre manière de réaliser cette requête => utiliser IN

SELECT *
FROM articles 
WHERE nb_commentaire IN (2, 8, 9) ;

-- Cas pratique 
-- récupérer tous les articles qui sont publiés ET qui soit l'id 1, 3 , 5, 6

SELECT *
FROM articles 
WHERE etat = TRUE AND
      id IN (1, 3 , 5, 6) ;

-- ORDER BY après le WHERE ou après le FROM si il n'y a de WHERE => trier du plus grand au plus petit 
-- LIMIT  après le ORDER BY ou après le WHERE si il n'y a pas d'ORDER BY


-- ORDER BY => trie
--           plus petit au plus grand ou inverse
--           plus ancien au plus récent ou inverse
--           plus a à z ou inverse

SELECT *
FROM articles 
ORDER BY nb_commentaire ;
-- trie en fonction de la colonne mentionnée
-- dans le ORDER BY 
-- titre est aussi classé dans l'ordre alphabétique

SELECT dt_publication , titre , nb_commentaire
FROM articles 
ORDER BY nb_commentaire ;

SELECT titre , dt_publication  , nb_commentaire
FROM articles 
ORDER BY nb_commentaire ;


-----------

SELECT titre , nb_commentaire
FROM articles 
ORDER BY nb_commentaire ASC; -- ASC est mis par défaut
                             -- petit => grand

SELECT titre , nb_commentaire
FROM articles 
ORDER BY nb_commentaire DESC; -- plus grand => petit


SELECT id , dt_publication , titre , nb_commentaire
FROM articles 
ORDER BY nb_commentaire  ;

-- il est possible de mettre plusieurs colonnes dans la clause ORDER BY 

SELECT id , dt_publication , titre , nb_commentaire
FROM articles 
ORDER BY nb_commentaire , dt_publication ;

-- attention à l'ordre des colonnes dans la clause ORDER BY dans les colonnes 

SELECT id , dt_publication , titre , nb_commentaire
FROM articles 
ORDER BY dt_publication , nb_commentaire   ;

SELECT id , dt_publication , titre , nb_commentaire
FROM articles 
ORDER BY nb_commentaire , dt_publication DESC;

------ 
-------- https://sqlite.org/lang_select.html

--- LIMIT => réduction 

SELECT titre , etat , nb_commentaire AS `nb`
FROM articles 
WHERE id > 4 OR etat = TRUE 
ORDER BY nb_commentaire DESC , dt_publication
LIMIT 2; 
-- permet de réduire le nombre de résultat
-- affiché à un nombre d'é

SELECT id , dt_publication , nb_commentaire
FROM articles ;

SELECT id , dt_publication , nb_commentaire
FROM articles 
ORDER BY nb_commentaire;

SELECT id , dt_publication , nb_commentaire
FROM articles 
ORDER BY nb_commentaire , dt_publication;

-- cas pratique 
-- afficher les deux derniers articles publiés (dont la date est la plus récente) ?

SELECT * /* de choisir certaines colonnes pas toutes avec le symbole * */ 
FROM articles 
WHERE etat = TRUE 
ORDER BY dt_publication DESC 
LIMIT 2;

CRUD
Create => INSERT
Read => SELECT 
Update => mettre à jour des valeurs dans la table articles 
Delete => supprimer des lignes d'enregistrement dans la table articles

=> rdv 15h00 @ toute suite !!!!




