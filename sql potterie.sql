CREATE TABLE categorie (
    id NUMBER PRIMARY KEY,
    nom NCHAR(10) NOT NULL
);

CREATE TABLE client (
    id NUMBER(10) PRIMARY KEY,
    nom CHAR(15) NOT NULL,
    telephone NUMBER(10) NOT NULL,
    email NCHAR(30) NOT NULL
);

CREATE TABLE produit (
    id NUMBER(10) PRIMARY KEY,
    prix NUMBER NOT NULL,
    categorie_id NUMBER NOT NULL,
    FOREIGN KEY (categorie_id) REFERENCES categorie(id)
);

CREATE TABLE commande (
    id NUMBER PRIMARY KEY,
    id_client NUMBER NOT NULL,
    date_commande DATE NOT NULL,
    total NUMBER NOT NULL,
    FOREIGN KEY (id_client) REFERENCES client(id)
);

CREATE TABLE categorieproduit (
    categorie_id NUMBER NOT NULL,
    produit_id NUMBER NOT NULL,
    PRIMARY KEY (categorie_id, produit_id),
    FOREIGN KEY (categorie_id) REFERENCES categorie(id),
    FOREIGN KEY (produit_id) REFERENCES produit(id)
);


