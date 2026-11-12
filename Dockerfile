FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY src/ ./src/
COPY web/ ./web/

# a pasta "dados" é criada aqui (não depende de existir no repositório)
RUN mkdir -p out dados && javac --add-modules jdk.httpserver -encoding UTF-8 -d out $(find src -name "*.java")

ENV DATA_DIR=/app/dados

CMD ["java", "--add-modules", "jdk.httpserver", "-cp", "out", "br.com.pesca.main.ServidorWeb"]
