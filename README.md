# Restriction d'Accès Horaire pour un Utilisateur avec un Script Bash

Ce guide explique comment restreindre l'accès d'un utilisateur à une plage horaire spécifique (par exemple, entre 7h et 18h) sur un système Linux, en utilisant un script Bash. Ce script vérifie l'heure actuelle et empêche l'utilisateur de se connecter en dehors de la plage horaire définie.

## Prérequis

- Un système Linux (Ubuntu, CentOS, Debian, etc.).
- Un utilisateur spécifique dont l'accès doit être restreint (remplacez `<nom_utilisateur>` par le nom de l'utilisateur à restreindre).

## Fonctionnement du Script

Le script permet de limiter l'accès à un utilisateur spécifique entre 7h (07:00) et 18h (18:00). Si l'utilisateur tente de se connecter en dehors de cette plage horaire, il reçoit un message d'erreur et sa connexion est refusée.

## Étapes d'Installation

1. **Créer un fichier de script Bash** :
   
   Créez un fichier nommé `restrict_access.sh` dans votre répertoire personnel ou dans un répertoire spécifique de votre choix. Ouvrez un éditeur de texte et collez-y le script ci-dessous.

   ```bash
   nano ~/restrict_access.sh
