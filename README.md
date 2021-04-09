# mysql_docker
MySQL and mongo deployment sample

Hallo

Dies ist ein docker-compose.yml File, um eine MySQL, Adminer unter Docker Desktop starten zu können.

Es bedingt, dass Docker Desktop installiert und gestartet wurde.  Docker Desktop bietet eine Benutzeroberfläche wo Images und Container verwaltet werden können.

Alle Innhalte sind hier: Work in Progress. Guten Input gerne. Danke!

Befehl für das Starten des Netzwerk, MySQL und Adminer:

> docker-compose up
oder
> docker-compose up --build

Der Befehl impliziert das docker-compose.yml File. daher muß  es nicht angegeben werden. 
--build generiert neu, was ggf. notwendig wird. Mehr Syntax Beschreibung siehe etwa https://hub.docker.com

> docker-compose down
oder
> docker-compose down -v 

Das Aufräumen mit -v hilft, dass Docker Desktop die 'Volumes' frei gibt und ggf. ausgetauscht werden können.

Befehl für das Starten des Netzwerk, MySQL und Adminer via docker stack. 
docker stack erlaubt die Verwendung von mehren Knoten und kann mit dem yml File ebenso umgehen:

> docker stack deploy -c docker-compose.yml p1
bzw.
> docker stack rm p1 
 
