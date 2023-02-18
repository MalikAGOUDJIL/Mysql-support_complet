
/* back up => sauvegarde d'une table 
CREATE TABLE ..... AS SELECT * FROM articles
*/

CREATE TABLE sauvegarde_articles AS SELECT * FROM articles ;

DROP TABLE sauvegarde_articles; -- ne pas exécuter 

-- différence de .db 
-- .sql

-- base de données fichier stocker 
-- les données => tables => stockée dans le fichier .db 


-- .sql => fichier SQL qui va faire demander => SQLITE (SGBD) => .db => renvoie une réponse 