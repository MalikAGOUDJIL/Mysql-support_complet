-- INSERT ajouter un ou plusieurs lignes 
-- SELECT récupérer des lignes 

-- modifier des valeurs dans une table
-- modifier la valeur stockée pour l'article qui a l'id 1
-- la valeur stockée sous le champ titre => "mon premier article"
UPDATE articles 
SET titre = "mon premier article" 
WHERE id = 1 ;

SELECT * FROM articles;

-- lorsque l'on fait UPDATE il ne JAMAIS oublié le WHERE

UPDATE articles 
SET titre = "mon premier article" ; 

-- vous venez de modifier toutes les valeurs de la colonne titre

-- revenir en arrière
DELETE FROM articles ;

INSERT INTO articles SELECT * FROM sauvegarde_articles ;

UPDATE articles 
SET titre = "mon premier article" 
WHERE id = 1 ;

SELECT * FROM articles;
-- supprimer des lignes dans une table 

-- versioning 

-- il est possible de modifier plusieurs colonnes sur un ligne dans notre table articles
-- modifier pour l'article numéro 4 modifier son titre et son contenu

UPDATE articles 
SET titre = "titre modifié" , contenu = "lorem ipsum sed tempores"
WHERE id = 4 ;

SELECT * FROM articles;

-- update peut aussi modifier simultanément plusieurs lignes en même temps 
-- je veux augmenter de +1 l'ensemble des nombres de commentaires pour les articles qui sont publiés

UPDATE articles 
SET nb_commentaire = nb_commentaire + 1 
WHERE etat = TRUE ;

-- = dans SET => affectation
-- = dans WHERE => comparaison

SELECT * FROM articles;

/* = > < <= >= != <> BETWEEN IN LIKE */

-- UPDATE modifie la donnée stockée dans la table DEFINITIVEMENT => pas de ROLLBACK pas défaut  

-- revenir en arrière
DELETE FROM articles ;
INSERT INTO articles SELECT * FROM sauvegarde_articles ;

-- cas pratique : 3 questions :

-- pour tous les articles publiés le 1er Aout 2022 augmenter de +3 le nombre de commentaire
SELECT * FROM articles WHERE dt_publication = "2022-08-01";

UPDATE articles 
SET nb_commentaire = nb_commentaire + 3
WHERE dt_publication = "2022-08-01";

-- pour tous les articles qui contiennent le mot HTML passer leur etat à non publié

SELECT * FROM articles WHERE titre LIKE "%HTML%";

UPDATE articles 
SET etat = FALSE 
WHERE titre LIKE "%HTML%"; 

-- pour tous les articles 1 et 2 changer leur date de publication au 10 Aout 2022

SELECT * FROM articles WHERE id IN (1,2);

UPDATE articles
SET dt_publication = "2022-08-10"
WHERE id IN (1,2);

UPDATE articles
SET dt_publication = "2022-08-10"
WHERE id = 1 OR id = 2;


