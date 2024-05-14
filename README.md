# Image-Inpainting
Analyse et reproduction d'un training du modèle DMFN pour du [fine-grained inpainting](https://arxiv.org/pdf/2002.02609) proposé par Hui, Z., Li, J., Wang, X. et Gao, dans le cadre du cours CHPS904, encadré par M. Bart Lamiroy. 

Le code se base sur l'adaptation fournie sur ce [repo git](https://github.com/HannH/DMFN/tree/master), qui est déjà une adaptation du [repo officiel](https://github.com/Zheng222/DMFN). 

L'adaptation du code a été réalisée pour que cela fonctionne sur des noeuds de calcul du centre de calcul régional [ROMEO](https://romeo.univ-reims.fr).

# Téléchargement des images pour l'entraînement

Les images sont disponibles sur le lien [celebA](http://mmlab.ie.cuhk.edu.hk/projects/CelebA.html). Il constitue une base de données d'images de visages de célébrités. Il n'est pas nécessaires de faire des dossiers pour le test et train.

Attention cependant, en dézippant, beaucoup d'images étaient corrompues sur ROMEO. J'ai tenté de convertir les images en jpg puis en png pour assurer le format ; la méthode n'est pas sûre et très chronophage. 

# Prérequis (déjà dispo sur Roméo ?)

- Python3.5 (or higher)
- pytorch 1.0 (or higher) with GPU
- numpy
- OpenCV
- scipy
- tensorboardX

Pour avoir tous les packages, j'ai créé un environnement virtuel ; c'était la solution la plus simple.
