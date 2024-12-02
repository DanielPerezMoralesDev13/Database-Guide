-- Autor: Daniel Benjamin Perez Morales
-- GitHub: https://github.com/DanielPerezMoralesDev13
-- Correo electrónico: danielperezdev@proton.me

/*
TIPOS DE RELACIONES
*/

/*
Relación 1:1 (uno a uno)
Relación que indica que un registro en la tabla A se relaciona 
con un sólo registro en la tabla B y viceversa.
*/

CREATE TABLE dni (
    dni_id INTEGER PRIMARY KEY AUTOINCREMENT,
    dni_number INT NOT NULL,
    user_id INT UNIQUE, -- Asegura que cada usuario tenga un solo DNI
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

/*
Relación 1:N (uno a muchos)
Relación que indica que un registro en la tabla A puede tener varios registros relacionados en la
tabla B, pero un registro en la tabla B se relaciona con un sólo registro en la tabla A.
*/

CREATE TABLE companies (
    company_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

ALTER TABLE users ADD COLUMN company_id INT;
-- Añade la columna para la clave foránea
-- Luego, debes modificar la tabla para establecer la clave foránea manualmente:
CREATE TABLE users_new (
    user_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES companies (company_id)
);

INSERT INTO
    users_new (user_id, name, company_id)
SELECT user_id, name, company_id
FROM users;

DROP TABLE users;

ALTER TABLE users_new RENAME TO users;
-- Renombra la nueva tabla
/*
Relación N:M (muchos a muchos)
Requiere una tabla intermedia o de unión para establecer la relación.
*/
CREATE TABLE languages (
    language_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

CREATE TABLE users_languages (
    users_language_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INT,
    language_id INT,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (language_id) REFERENCES languages (language_id),
    UNIQUE (user_id, language_id)
);

/*
Relación de Auto-Referencia
Relación que indica que un registro en la tabla A puede 
relacionarse con otro registro de la tabla A.
*/

/*
INSERT y UPDATE para trabajar con JOIN
*/

/*
1:1
*/

INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);

INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);

INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);
/* El siguiente insert fallará si no se especifica el user_id
INSERT INTO dni (dni_number) VALUES (44444444);  -- Esto debería fallar por no tener user_id .
Esto significa que cada valor en esa columna debe ser único y no puede ser NULL.
Sin embargo, si no se especifica un user_id al realizar la inserción y el campo está definido como UNIQUE, la inserción fallará si el campo no permite valores nulos.*/

/*
1:N
*/

INSERT INTO companies (name) VALUES ('Daniel');

INSERT INTO companies (name) VALUES ('Apple');

INSERT INTO companies (name) VALUES ('Google');

UPDATE users SET company_id = 1 WHERE user_id = 1;

UPDATE users SET company_id = 2 WHERE user_id = 3;

UPDATE users SET company_id = 3 WHERE user_id = 4;

UPDATE users SET company_id = 1 WHERE user_id = 7;

/*
N:M
*/

INSERT INTO languages (name) VALUES ('Swift');

INSERT INTO languages (name) VALUES ('Kotlin');

INSERT INTO languages (name) VALUES ('JavaScript');

INSERT INTO languages (name) VALUES ('Java');

INSERT INTO languages (name) VALUES ('Python');

INSERT INTO languages (name) VALUES ('C#');

INSERT INTO languages (name) VALUES ('COBOL');

INSERT INTO users_languages (user_id, language_id) VALUES (1, 1);

INSERT INTO users_languages (user_id, language_id) VALUES (1, 2);

INSERT INTO users_languages (user_id, language_id) VALUES (1, 5);

INSERT INTO users_languages (user_id, language_id) VALUES (2, 3);

INSERT INTO users_languages (user_id, language_id) VALUES (2, 5);