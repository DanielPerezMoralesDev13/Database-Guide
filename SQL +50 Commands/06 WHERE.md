<!-- Autor: Daniel Benjamin Perez Morales -->
<!-- GitHub: https://github.com/DanielPerezMoralesDev13 -->
<!-- Correo electrónico: danielperezdev@proton.me -->

# ***`WHERE`***

---

## ***¿Qué es `WHERE`?***

> [!NOTE]
> **La cláusula `WHERE` en SQL se utiliza para filtrar registros en una consulta. Permite especificar condiciones que deben cumplirse para que las filas se incluyan en el resultado. Sin `WHERE`, la consulta devuelve todos los registros de la tabla. Usar `WHERE` es fundamental para realizar búsquedas específicas y obtener resultados relevantes.**

---

### ***Ejemplos de Uso***

---

#### ***1. MySQL***

```sql
SELECT * FROM users WHERE age = 18;
```

```sql
mysql> SELECT * FROM users WHERE age = 18;
+---------+--------+---------------+------+------------+----------------------+
| user_id | name   | surname       | age  | init_date  | email                |
+---------+--------+---------------+------+------------+----------------------+
|       1 | Daniel | Perez Morales |   18 | 2005-12-13 | d4nitrix13@gmail.com |
+---------+--------+---------------+------+------------+----------------------+
1 row in set (0.00 sec)
```

- **Explicación:** *Esta consulta selecciona todos los campos de la tabla `users` donde la edad (`age`) es igual a 18. Solo se devolverán las filas que cumplen con esta condición, en este caso, un registro de un usuario llamado Daniel.*

---

#### ***2. PostgreSQL***

```sql
SELECT * FROM users WHERE age = 18;
```

```sql
hello_postgresql=# SELECT * FROM users WHERE age = 18;
 user_id |  name  |    surname    | age | init_date  |        email
---------+--------+---------------+-----+------------+----------------------
       1 | Daniel | Perez Morales |  18 | 2005-12-13 | d4nitrix13@gmail.com
(1 row)
```

- **Explicación:** *De manera similar a la consulta en MySQL, esta instrucción en PostgreSQL también selecciona todas las columnas de la tabla `users` donde la edad es 18. El resultado es el mismo, mostrando solo el registro de Daniel.*

---

#### ***3. SQLite3***

```sql
SELECT * FROM users WHERE age = 18;
```

```sql
sqlite> SELECT * FROM users WHERE age = 18;
1|Daniel|Perez Morales|18|2005-12-13|d4nitrix13@gmail.com
```

- **Explicación:** *Esta consulta en SQLite3 también utiliza la cláusula `WHERE` para filtrar registros. La salida muestra el mismo resultado que las consultas anteriores, destacando el registro del usuario con edad 18.*

---

### ***Inserción de un Nuevo Campo***

---

#### ***1. Inserción en MySQL***

```sql
INSERT INTO users (name, surname, age, init_date, email) VALUES ("Coby", "Morales", 18, "2005-12-13", "coby@gmail.com");
```

```sql
mysql> INSERT INTO users (name, surname, age, init_date, email) VALUES ("Coby", "Morales", 18, "2005-12-13", "coby@gmail.com");
Query OK, 1 row affected (0.01 sec)
```

- **Descripción:** *Esta consulta inserta un nuevo registro en la tabla `users`.*
  - **Campos:** *Se especifican los campos `name`, `surname`, `age`, `init_date`, y `email`.*
  - **Valores:** *Se insertan los valores correspondientes: `"Coby"` como nombre, `"Morales"` como apellido, `18` como edad, `"2005-12-13"` como fecha de inicio, y `"coby@gmail.com"` como correo electrónico.*
- **Resultado:** *La salida `Query OK, 1 row affected` indica que la operación fue exitosa y que se insertó una fila.*

---

#### ***2. Inserción en PostgreSQL***

```sql
INSERT INTO users (name, surname, age, init_date, email) VALUES ('Coby', 'Morales', 18, '2005-12-13', 'coby@gmail.com');
```

```sql
hello_postgresql=# INSERT INTO users (name, surname, age, init_date, email) VALUES ('Coby', 'Morales', 18, '2005-12-13', 'coby@gmail.com');
INSERT 0 1
```

- **Descripción:** *Similar a la consulta en MySQL, esta instrucción inserta un nuevo registro en la tabla `users`.*
  - **Uso de comillas simples:** *PostgreSQL utiliza comillas simples para los valores de cadena.*
- **Resultado:** *`INSERT 0 1` indica que se ha realizado la inserción de 1 fila sin errores.*

---

#### ***3. Inserción en SQLite***

```sql
INSERT INTO users (name, surname, age, init_date, email) VALUES ('Coby', 'Morales', 18, '2005-12-13', 'coby@gmail.com');
```

```sql
sqlite> INSERT INTO users (name, surname, age, init_date, email) VALUES ('Coby', 'Morales', 18, '2005-12-13', 'coby@gmail.com');
```

- **Descripción:** *Esta consulta también inserta un nuevo registro en la tabla `users`, utilizando la misma sintaxis que en PostgreSQL.*
- **Resultado:** *SQLite no muestra una salida de confirmación por defecto, pero se puede suponer que la inserción fue exitosa si no hay mensajes de error.*

---

### ***Consulta de Datos***

---

#### ***4. Consulta en SQLite***

```sql
SELECT DISTINCT age FROM users WHERE age = 18;
```

```sql
sqlite> SELECT DISTINCT age FROM users WHERE age = 18;
18
```

- **Descripción:** *Esta consulta selecciona edades únicas (`DISTINCT age`) de la tabla `users`, filtrando solo aquellas filas donde la edad sea `18`.*
- **Resultado:** *La salida `18` indica que hay al menos un usuario en la tabla con esa edad.*

---

#### ***5. Consulta en PostgreSQL***

```sql
SELECT DISTINCT age FROM users WHERE age = 18;
```

```sql
hello_postgresql=# SELECT DISTINCT age FROM users WHERE age = 18;
 age
-----
  18
(1 row)
```

- **Descripción:** *Similar a la consulta en SQLite, selecciona las edades distintas de la tabla `users` donde la edad sea `18`.*
- **Resultado:** *La salida muestra `age` y el valor `18`, confirmando que existe al menos un registro que cumple la condición.*

---

#### ***6. Consulta en MySQL***

```sql
SELECT DISTINCT age FROM users WHERE age = 18;
```

```sql
mysql> SELECT DISTINCT age FROM users WHERE age = 18;
+------+
| age  |
+------+
|   18 |
+------+
1 row in set (0.00 sec)
```

- **Descripción:** *Esta consulta también busca edades únicas en la tabla `users` donde la edad es `18`.*
- **Resultado:** *La tabla de resultados muestra la edad `18`, indicando que hay al menos un usuario con esa edad.*

- **Resumen**

- **Inserción de Datos:** *Se realizaron inserciones en tres sistemas de gestión de bases de datos (MySQL, PostgreSQL y SQLite) para agregar un nuevo registro a la tabla `users` con información de un usuario llamado Coby.*
- **Consultas:** *Se realizaron consultas para seleccionar edades distintas de los usuarios con edad `18`. Todas las consultas devolvieron el resultado esperado, confirmando que hay al menos un usuario con esa edad.*

---

### ***Resumen***

- *La cláusula `WHERE` es esencial para filtrar datos y restringir el conjunto de resultados de una consulta.*
- *Permite especificar condiciones que deben cumplirse, como comparar valores en columnas específicas (por ejemplo, `age = 18`).*
- *Se utiliza en diversas bases de datos, como MySQL, PostgreSQL y SQLite3, con una sintaxis similar.*

- *Usar `WHERE` es una práctica fundamental en la gestión de bases de datos, ya que permite trabajar con conjuntos de datos más específicos y relevantes.*
