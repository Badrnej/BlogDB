--CREATIONN DE TABLE ROLE
CREATE TABLE Role (
    idRole INT AUTO_INCREMENT PRIMARY KEY,
    nomRole VARCHAR(50)
);

--INSERTION DANS LA TABLE ROLE
INSERT INTO Role (idRole, nomRole) VALUES
(1, 'admin'),
(2, 'users');
-- CREATION DE TABLE UTILISATEUR
CREATE TABLE Utilisateur (
    IDUtilisateur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50),
    prenom VARCHAR(50),
    email VARCHAR(100),
    mdp VARCHAR(50),
    idRole INT,
    FOREIGN KEY (idRole) REFERENCES Role(idRole) ON DELETE CASCADE
);

--INSERTION DANS TABLE UTILISATEUR
INSERT INTO Utilisateur (IDUtilisateur, nom, prenom, email, mdp, idRole) VALUES 
(1, 'EBBA', 'YOUSSEF', 'youssef@example.com', 'mpd1', 1), 
(2, 'NEJAA', 'AYMANE', 'aymane@example.com', 'mpd2', 1), 
(3, 'ARRAY', 'ADIL', 'adil@example.com', 'mpd3', 2); 
INSERT INTO Utilisateur (IDUtilisateur, nom, prenom, email, mdp, idRole) VALUES 
(4, 'AZGHOUL', 'MEHDI', 'mehdi@example.com', 'mpd1', 1),
(5, 'AFILAL', 'AMINE', 'amine@example.com', 'mpd2', 1);

-- CREATION DE TABLE CATEGORI
CREATE TABLE CATEGORIE (
    idCategorie INT AUTO_INCREMENT PRIMARY KEY,
    nomCategorie VARCHAR(50),
    idSousCategorie INT,
    FOREIGN KEY (idSousCategorie) REFERENCES CATEGORIE(idCategorie) ON DELETE CASCADE
);

-- INSERTION DANS LA TABLE CATEGORI
INSERT INTO CATEGORIE (idCategorie, nomCategorie, idSousCategorie) VALUES
(1, 'Infography', NULL), 
(2, 'technologie', 3),    
(3, 'Devolopment', NULL);
INSERT INTO CATEGORIE (idCategorie, nomCategorie, idSousCategorie) VALUES
(4, 'Maintenance', 5), 
(5, 'Administration', NULL);    
 

--CREATION DE TABLE ARTICLE 
CREATE TABLE ARTICLE (
    IdArticle INT AUTO_INCREMENT PRIMARY KEY,
    nomArticle VARCHAR(100),
    langue VARCHAR(50),
    idCategorie INT,
    idUtilisateur INT,
    FOREIGN KEY (idCategorie) REFERENCES CATEGORIE(idCategorie) ON DELETE CASCADE,
    FOREIGN KEY (idUtilisateur) REFERENCES UTILISATEUR(IDUtilisateur) ON DELETE CASCADE
);

-- IINSERTION DANS TABLE ARTICLE
INSERT INTO ARTICLE (IdArticle, nomArticle, langue, idCategorie, idUtilisateur) VALUES
(1, 'Article 1',  'FR', 1, 1),
(2, 'Article 2',  'AR', 2, 1),
(3, 'Article 3',  'ENG', 1, 3); 
INSERT INTO ARTICLE (IdArticle, nomArticle, langue, idCategorie, idUtilisateur) VALUES
(4, 'Article 4',  'FR', 4, 1),
(5, 'Article 5',  'ENG', 5, 3); 

--CREATION DE TABLE COMMENTAIRE
CREATE TABLE COMMENTAIRE (
    IdCommentaire INT AUTO_INCREMENT PRIMARY KEY,
    Contenu varchar(30),
    datecom DATE,
    IdArticle INT,
    IdUtilisateur INT,
    FOREIGN KEY (IdArticle) REFERENCES ARTICLE(IdArticle) ON DELETE CASCADE,
    FOREIGN KEY (IdUtilisateur) REFERENCES UTILISATEUR(IDUtilisateur) ON DELETE CASCADE
);

-- INSERTION DANS LA TABLE COMMENTAIRE
INSERT INTO COMMENTAIRE (IdCommentaire, Contenu, datecom, IdArticle, IdUtilisateur) VALUES
(1, 'Contenu du commentaire1', '2024-03-05', 1, 3);
INSERT INTO COMMENTAIRE (IdCommentaire, Contenu, datecom, IdArticle, IdUtilisateur) VALUES
(2, 'Contenu du commentaire2', '2023-09-07', 2, 3),
(3, 'Contenu du commentaire3', '2024-02-08', 5, 1),
(4, 'Contenu du commentaire4', '2024-04-13', 2, 4),
(6, 'Contenu du commentaire5', '2024-05-25', 4, 2);



