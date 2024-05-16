#!/bin/bash

# Spécifiez le chemin du fichier texte contenant la liste des images
file_list="train.txt"
path="/home/hdemnati/904/test_nonofficial/DMFN/CelebAMask-HQ/CelebA-HQ-img/"

# Vérifiez si le fichier liste_images.txt existe
if [ ! -f "$file_list" ]; then
    echo "Le fichier $file_list n'existe pas."
    exit 1
fi

# Parcourir chaque ligne du fichier
while IFS= read -r line; do
    # Vérifier si le fichier existe
    full_path="${path}${line}"
    if [ ! -f "$full_path" ]; then
        echo "Le fichier $full_path n'existe pas. Suppression de la ligne."
        # Supprimer la ligne du fichier texte
        sed -i "/$line/d" "$file_list"
    fi
done < "$file_list"

echo "Vérification terminée."
