# Laboratorium 3
## Wykorzystane polecenia:
- Budowanie obrazu
```
docker build --ssh default -t lab3.v1 .
```
- Uruchamianie konterena
```
docker run -it -p 8080:8080 lab3.v1
```
- Zmiana nazwy obrazu
```
docker tag lab3.v1:latest reekad/lab3.v1:latest
```
- Wysłanie obrazu na repozytorium DockerHub
```
docker push reekad/lab3.v1:latest
```
