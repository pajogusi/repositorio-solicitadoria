#!/bin/bash

cd ~/universidade-da-vida-direito

sed -i 's|ndiv class="dashboard">|<div class="dashboard">|g' index.html

git add index.html
git commit -m "Corrigir abertura do dashboard"
git push

echo "Dashboard corrigido."
