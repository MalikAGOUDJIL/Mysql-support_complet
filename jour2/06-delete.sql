-- DELETE permet de supprimer une ou plusieurs lignes dans une table

SELECT * FROM articles ;

DELETE FROM articles WHERE id = 4 ;
-- DELETE 
-- INSERT
-- UPDATE 
-- pour ces 3 requêtes => lorsqu'elles sont exécutées ET qu'il n'y a pas d'erreur de syntaxe
-- => tableau vide en retour 

-- pour avoir un retour => SELECT * 

-- comme pour le UPDATE, DELETE est définitif
-- il n'y a pas de copie automatique de la table avant le DELETE et de faire un ROLLBACK quand on veut 

-- ATTENTION !!!!!!!!!!!!!!! si vous oubliez le WHERE dans le DELETE => vider intégralement toutes les lignes de table
DELETE FROM articles ;

-- mySQL MariaDB => vider la table de son contenu => possible via le mot clé TRUNCATE

TRUNCATE articles ;

-- cas pratique :
-- supprimer tous les articles dont le titre contient le mot CSS 

DELETE FROM articles 
WHERE titre LIKE "%CSS%";

DELETE FROM articles 
WHERE titre LIKE "%css%";

-- supprimer tous les articles qui contiennent moins de 5 commentaires 

DELETE FROM articles
WHERE nb_commentaire < 5 ;

-- la requête suivante peut remplacer les deux précédentes 

DELETE FROM articles
WHERE nb_commentaire < 5 OR titre LIKE "%css%" ;

SELECT * FROM articles;


-- DELETE FROM articles
-- WHERE nb_commentaire LIKE "5" ; -- pas bon exacte car nb_commentaire contient des INT 
--                                 -- LIKE à utiliser sur des colonnes qui contiennent VARCHAR() TEXT


UPDATE articles
SET nb_commentaire = 1, titre = "toto" , etat = TRUE
WHERE id = 1 ;
=> modifier les valeurs stockées dans une ou plusieurs lignes de la table 

ALTER TABLE articles ... => modifier le schema de la table 

UPDATE articles
SET titre = "blablabla"
WHERE id IN (2,3);

SELECT * FROM articles;

UPDATE articles
SET titre = "toto"
WHERE id = 5 ;

UPDATE articles
SET titre = "titi"
WHERE id = 6 ;