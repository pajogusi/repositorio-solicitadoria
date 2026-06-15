#!/bin/bash

cd ~/universidade-da-vida-direito

SCRIPT='<script data-goatcounter="https://pajogusi.goatcounter.com/count" async src="//gc.zgo.at/count.js"></script>'

find . -name "*.html" | while read ficheiro
do
    if ! grep -q "goatcounter.com/count" "$ficheiro"; then
        sed -i "/<\/body>/i $SCRIPT" "$ficheiro"
        echo "Atualizado: $ficheiro"
    fi
done

git add .
git commit -m "Adicionar GoatCounter ao site"
git push

echo "GoatCounter instalado."
