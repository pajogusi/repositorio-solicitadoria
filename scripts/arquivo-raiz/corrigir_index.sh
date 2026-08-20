#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A corrigir página principal..."

sed -i 's|<li>Introdução ao Direito I</li>|<li><a href="cadeiras/cadeira-01-introducao-direito-i.html">Introdução ao Direito I</a></li>|g' index.html

sed -i '/Abrir Introdução ao Direito I/d' index.html

git add .
git commit -m "Melhorar links da pagina principal"
git push

echo "Concluído."
echo "Aguarda 1 minuto e atualiza o site."
