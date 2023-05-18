## CONNECT DATABASE

En mi caso debo tener mysql para linux, o en la terminal

USANDO LA TERMINAL

```
mysql --host 127.0.0.1 -P 3306 -u root -p
```

Entender lo que es una base de datos entendiendo una DER

DER ==> Diagrama de entiedad relacion

BACK UP => GENERAR UN BACK UP CON MYSQL DUMP

```
mysqldump --host 127.0.0.1 -P 3306 -u root -p  beer_company > bk_beer.sql
```

RESTORE =>

```
mysql --host 127.0.0.1 -P 3306 -u root -p beer_restore_bk < bk_beer.sql

```
