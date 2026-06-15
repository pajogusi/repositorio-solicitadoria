#!/bin/bash

cd ~/universidade-da-vida-direito

sed -i 's/Em desenvolvimento\./<strong>Concluída.<\/strong>/g' \
cadeiras/cadeira-04-estudo-empresa.html

git add .
git commit -m "Corrigir estado da cadeira 4"
git push

echo "Estado corrigido."

