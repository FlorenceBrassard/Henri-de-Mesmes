# Henri-de-Mesmes

## Conversions

Le fichier de conversions `convert.sh` utilise les variables dans un fichier séparé, à renseigner sur le poste de chacun·e.
Il faudra d'abord copier le fichier `variables.exemple.sh` pour en créer un nouveau : `variables.sh`. Dans le terminal :

```bash
cp variables.exemple.sh variables.sh
```

Ensuite, il faudra compléter les variables avec les bonnes valeurs d'environnement.

Pour lancer la conversion d'un fichier `fichier123.xml` vers `fichier123.html`, on lancera le script ainsi (toujours dans le terminal) :

```bash
convert.sh fichier123
```

_(Attention à ne pas inclure l'extension du fichier !)_

