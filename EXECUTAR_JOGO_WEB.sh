#!/bin/sh
cd "$(dirname "$0")"
echo "Abrindo o jogo em http://localhost:8080"
java -jar pescaria-servidorweb.jar
