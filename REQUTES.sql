--Pour creer une table

CREATE TABLE utilisateur (
    id INT PRIMARY KEY,
    nom VARCHAR(50),
    age INT
);
--pour inserer dans une TABLE
-- Insérer deux valeurs dans la table MaTable
INSERT INTO utilisateur (id, nom, age) VALUES
(1, 'SALAH', 30),
(2, 'AYMAN', 35),
(3, 'BADR', 25),
(4, 'YOUSSEF', 23),
(5, 'YAHYA', 25),
(6, 'ADIL', 40);

-- 
-- Pour Modifier l'âge de AYMANE dans la table MaTable
UPDATE utilisateur
SET age = 20
WHERE nom = 'AYMANE';


--Pour Supprimer les lignes où la valeur  "nom" est "Aymane"
DELETE FROM utilisateur
WHERE nom = 'AYMANE';


-- Pour selecter la TABLE
SELECT * FROM utilisateur

--Pour selecter COLUMN
SELECT nom FROM utilisateur


--Pour selecter les lignes ou age est 25 
SELECT * FROM utilisateur
where age = 25;

--Pour selecter les lignes ou age est > 25 et nom est salah
SELECT * FROM utilisateur
where age > 25 AND nom = 'SALAH';



