docker build --tag django

docker run -d --name django -p 80:80 -e SECRET_KEY=z5b2c2 -e DEBUG=TRUE django
