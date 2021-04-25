## MySQL Docker deployment sample

Hallo

Dies ist ein docker-compose.yml File um MySQL, den Adminer unter Docker Desktop einrichten zu können.

Es bedingt, dass Docker Desktop installiert und gestartet wurde. Docker Desktop bietet eine Benutzeroberfläche wo Images und Container verwaltet werden können.
Es muß Verzeichnis MysqlDaten da sein:

> mkdir MySQLDaten

Befehl für das Starten des Netzwerk, MySQL und Adminer:

> docker-compose up

oder

> docker-compose up --build -d

Der Befehl impliziert das docker-compose.yml File. daher muß es nicht angegeben werden.
--build generiert neu, was ggf. notwendig wird. Mehr Syntax Beschreibung siehe etwa https://hub.docker.com

> docker-compose down

oder

> docker-compose down -v

Das Aufräumen mit -v hilft, dass Docker Desktop die 'Volumes' frei gibt und ggf. ausgetauscht werden können.

## Zusätzlich docker stack

Docker Befehle für das Starten des Netzwerk, MySQL und Adminer via docker stack.

Docker stack erlaubt die Verwendung von mehren Knoten und kann mit dem yml File ebenso umgehen:

> docker stack deploy -c docker-compose.yml p1

bzw.

> docker stack rm p1

## Löschen des Verzeichnis:

in einer PowerShell funktioniert dieser Befehl:

> rmdir .\MysqlDaten\* -R

---

Inhalt hier ist Work in Progress. Input gerne. Danke!

Befehlt für das Wegkopieren einer Datenbank:

docker exec some-mysql sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > /some/path/on/your/host/all-databases.sql
