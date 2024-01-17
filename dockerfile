# Utiliser l'image officielle de Rust en tant qu'image de base
FROM rust:latest

# Créer un répertoire de travail pour l'application
WORKDIR /app


# Cloner le projet depuis GitHub
RUN git clone https://github.com/cortowc/moseiik.git .


# Définir la commande par défaut pour exécuter l'application lorsque le conteneur démarre
CMD ["cargo run --release -- --image "assets/target-small.png" --tiles "assets/tiles-small""]
