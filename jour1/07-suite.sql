-- Crée des tables
-- colonne => type associé faire en sorte de choisir le type le plus optimal en fonction la nature des données que vous voulez stocker 

-- en + du type il est possible de déclarer des informations complémentaires complémentaires sur la colonnes 

-- VALEUR par défaut 

-- créer un article publié / non publié ET par DEFAULT non publié

-- créer un article et vous oubliez de lui donner un titre => refuser de le titre soit null 

-- créer un nouvelle table dejeuner
-- 3 colonnes 
-- nom texte maximum de 100 lettre ET impossible que ce soit null 
-- prix chiffre à virgule FLOAT et par défaut sa valeur doit être 2
-- dt_achat année mois jour et par défaut sa valeur va être maintenant 

-- mySQL Mariadb

CREATE TABLE dejeuner (
    nom VARCHAR(100) NOT NULL ,
    prix FLOAT DEFAULT 2,
    dt_achat DATE DEFAULT NOW()
)

-- SQLITE 

DROP TABLE dejeuner ;

CREATE TABLE dejeuner (
    nom VARCHAR(100) NOT NULL ,
    prix FLOAT DEFAULT 2,
    dt_achat DATE DEFAULT CURRENT_TIMESTAMP
);


