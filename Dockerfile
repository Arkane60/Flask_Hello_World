FROM python:3.10-slim

# Définir le dossier de travail
WORKDIR /app

# Copier le code du repo
COPY . /app

# Installer Flask et dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 5000 (Flask par défaut)
EXPOSE 5000

# Lancer l’application Flask
CMD ["python", "hello.py"]
