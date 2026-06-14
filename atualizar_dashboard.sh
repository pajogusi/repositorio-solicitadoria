#!/bin/bash

cd ~/universidade-da-vida-direito

echo "A atualizar dashboard..."

sed -i 's/>2<\/*strong>/\>3<\/strong>/g' index.html
sed -i 's/>20<\/*strong>/\>30<\/strong>/g' index.html

sed -i 's/11%/17%/g' index.html
sed -i 's/12%/17%/g' index.html
sed -i 's/15%/17%/g' index.html

git add index.html
git commit -m "Atualizar dashboard para 3 cadeiras e 30 aulas"
git push

echo "Dashboard atualizado para 17%."
