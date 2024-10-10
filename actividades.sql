CREATE DATABASE prueba1;

\ l \ c prueba1 

CREATE TABLE estudiantes(
    nombre varchar(50),
    notas INTEGER
);

\ dt
ALTER TABLE
    estudiantes
ADD
    notas varchar(50);

ALTER TABLE
    estudiantes
ADD
    apellido varchar(50);

\ d estudiantes
ALTER TABLE
    estudiantes DROP apellido;

\ d estudiantes
INSERT INTO
    estudiantes (nombre, notas)
VALUES
    ('Juan', 10);

INSERT INTO
    estudiantes (nombre, notas)
VALUES
    ('Pepe', 8);

INSERT INTO
    estudiantes (nombre, notas)
VALUES
    ('Juana', 7);

INSERT INTO
    estudiantes (nombre, email, empresa, prioridad)
VALUES
    ('Gabriel', 'gabi@mail.com', 'Facebook', 1),
    ('Maria', 9),
    ('Pedro', 8),
    ('Jesus', 7);



SELECT * FROM estudiantes;

INSERT INTO
    estudiantes (nombre, notas)
VALUES
    ('Juan', 10),
    ('Roberto'),
    ('Miguel');
SELECT * FROM estudiantes;

DELETE FROM estudiantes
WHERE notas IS NULL;

SELECT * FROM estudiantes;

DELETE FROM estudiantes
WHERE notas = '7';

SELECT * FROM estudiantes;

UPDATE estudiantes 
SET notas = '10'
WHERE notas = (SELECT MIN (notas) FROM estudiantes);

DELETE FROM estudiantes WHERE notas = '10';

SELECT * FROM estudiantes;

INSERT INTO
    estudiantes (nombre, notas)
VALUES
    ('Juaniiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiitooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooo', 10);

SELECT * FROM estudiantes ORDER BY notas DESC;

SELECT * FROM estudiantes LIMIT 2;

SELECT * FROM estudiantes 
    WHERE nombre = 'Pepe' 
    OR nombre = 'Maria';

SELECT nombre FROM estudiantes
  ORDER BY nombre ASC;

SELECT * FROM estudiantes 
ORDER BY notas ASC
LIMIT 3;

--Paso 19: Selecciona todas las notas entre 3 y 8.
select * from estudiantes
where cast(notas as int) between 3 and 8;



\q