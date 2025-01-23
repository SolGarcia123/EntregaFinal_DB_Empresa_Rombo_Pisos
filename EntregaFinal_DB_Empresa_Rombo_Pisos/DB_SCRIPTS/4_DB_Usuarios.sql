USE rombo_pisos;

/*Crear primer usuario*/
CREATE USER 'userlectura@localhost'
IDENTIFIED BY 'User1JDBC1*';

/* Asignacion de permiso de solo lectura  de todas las tablas*/
GRANT SELECT ON base_datos.* TO 'userlectura@localhost';

/*Crear segundo usuario*/
CREATE USER 'userdatos@localhost'
IDENTIFIED BY 'User2JDBC2*';

/* Asignacion de permisos de lectura, insercion y modificacion de datos*/
GRANT SELECT, INSERT, UPDATE ON base_datos.* TO 'userdatos@localhost';