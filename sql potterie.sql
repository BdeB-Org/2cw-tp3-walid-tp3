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
INSERT INTO categorie (id, nom) VALUES (1, N'biologique');
INSERT INTO categorie (id, nom) VALUES (2, N'traditionel');
INSERT INTO categorie (id, nom) VALUES (3, N'amazigh');

INSERT INTO client (id, nom, telephone, email) VALUES (1, 'Walid dahdahx', 1234567890, N'walid@gmail.com');
INSERT INTO client (id, nom, telephone, email) VALUES (2, 'WAWA EGK', 2345678901, N'WAWA@outlook..com');
INSERT INTO client (id, nom, telephone, email) VALUES (3, 'Dahdah Messi', 3456789012, N'Dahdah@gmail.com');
INSERT INTO client (id, nom, telephone, email) VALUES (3, 'Douae Ohm ', 2290756445, N'Douae445@gmail.com');
INSERT INTO client (id, nom, telephone, email) VALUES (3, 'Sara Eskab ', 3849302837, N'Saraeska@gmail.com');
INSERT INTO client (id, nom, telephone, email) VALUES (3, 'Nour Nayal ', 8647583948, N'Nnour@gmail.com');

INSERT INTO produit (id, prix, categorie_id) VALUES (1, 99.99, 1);
INSERT INTO produit (id, prix, categorie_id) VALUES (2, 19.99, 2);
INSERT INTO produit (id, prix, categorie_id) VALUES (3, 49.99, 3);
INSERT INTO produit (id, prix, categorie_id) VALUES (4, 29.99, 3);
INSERT INTO produit (id, prix, categorie_id) VALUES (5, 149.99, 1);

INSERT INTO commande (id, id_client, date_commande, total) VALUES (1, 1, TO_DATE('2024-05-01', 'YYYY-MM-DD'), 249.98);
INSERT INTO commande (id, id_client, date_commande, total) VALUES (2, 2, TO_DATE('2024-06-15', 'YYYY-MM-DD'), 399.99);
INSERT INTO commande (id, id_client, date_commande, total) VALUES (3, 3, TO_DATE('2024-07-20', 'YYYY-MM-DD'), 79.98);

INSERT INTO categorieproduit (categorie_id, produit_id) VALUES (1, 1);
INSERT INTO categorieproduit (categorie_id, produit_id) VALUES (2, 2);
INSERT INTO categorieproduit (categorie_id, produit_id) VALUES (3, 3);
INSERT INTO categorieproduit (categorie_id, produit_id) VALUES (3, 4);
INSERT INTO categorieproduit (categorie_id, produit_id) VALUES (1, 5);

