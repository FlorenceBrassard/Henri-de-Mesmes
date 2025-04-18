# Henri-de-Mesmes

## Conversions

Le fichier de conversion `convert.sh` utilise les variables dans un fichier séparé `variables.sh`, à renseigner sur le poste de chaque utilisateur·trice.
Il faudra d'abord copier le fichier `variables.exemple.sh` pour en créer un nouveau : `variables.sh`. Dans le terminal :

```bash
cp variables.exemple.sh variables.sh
```

Ensuite, il faudra compléter `variables.sh` avec les bonnes valeurs d'environnement.

Pour lancer la conversion d'un fichier `fichier123.xml` vers `fichier123.html`, on lancera le script ainsi (toujours dans le terminal) :

```bash
bash convert.sh fichier123
```

_(Attention à ne pas inclure l'extension du fichier !)_

