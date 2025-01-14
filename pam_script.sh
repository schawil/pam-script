#!/bin/bash

# Demander à l'utilisateur de se connecter
echo "Veuillez entrer votre nom d'utilisateur : "
read username

# Vérifier si l'utilisateur existe dans /etc/passwd
if ! id "$username" &>/dev/null; then
    echo "Utilisateur introuvable."
    exit 1
fi

# Demander le mot de passe
echo -n "Entrez votre mot de passe : "
read -s password
echo

# Utilisation de PAM pour vérifier l'authentification
# Si l'authentification réussit, pam_unix.so permet d'authentifier l'utilisateur
# L'option --debug permet de sortir des informations pour voir ce qui se passe en coulisse
echo "$password" | sudo -S pam-authenticate --username "$username" --password

# Vérifier si l'authentification a réussi
if [ $? -eq 0 ]; then
    echo "Authentification réussie."
else
    echo "Échec de l'authentification."
fi
