-- Autor: Daniel Benjamin Perez Morales
-- GitHub: https://github.com/DanielPerezMoralesDev13
-- Correo electrónico: danielperezdev@proton.me

-- Sintaxis Comentarios PostgreSQL

-- Conecta a la base de datos `hello_postgresql` como el usuario actual.
\connect hello_postgresql;

-- Este comando selecciona todos los registros y columnas de la tabla `users`.
SELECT * FROM users;

-- Este comando selecciona solo la columna `name` de la tabla `users`.
SELECT name FROM users;

-- Este comando selecciona las columnas `user_id` y `name` de la tabla `users`.
SELECT user_id, name FROM users;