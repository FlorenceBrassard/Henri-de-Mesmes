#!/bin/bash

# Fichier de conversion
#
# Usage:
#
#   bash convert.sh <mon-fichier>
#
# ... où <mon-fichier> correspond à ex. page123.xml, à renseigner sans l'extension.

# Ce fichier dépend des variables dans un fichier externe
# (non suivi par Git)
source variables.sh

if [[ $# -eq 0 ]] ; then
  echo "Vous devez indiquer un fichier à convertir, sans l'extension .xml"
  exit 1
fi

echo "Début de la conversion de $1..."
echo ""

java -cp \
  $SAXON_PATH \
  net.sf.saxon.Transform \
  -s:$1.xml \
  -xsl:$XSL_PATH \
  -o:$1.html

echo ""
echo "Fin de la conversion."

