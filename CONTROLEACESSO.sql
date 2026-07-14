CREATE USER "lduarte"@"localhost"
IDENTIFIED BY "@Mudar123";

GRANT SELECT, INSERT, DELETE, UPDATE
ON biblioteca_unb.*
TO 'lduarte'@'localhost';