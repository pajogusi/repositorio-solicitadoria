#!/bin/bash

cd ~/universidade-da-vida-direito

# Corrigir badge no Plano de Estudos
sed -i 's|<span class="badge desenvolvimento">🟡 Em desenvolvimento</span>|<span class="badge concluida">🟢 Concluída</span>|' cadeiras.html

# Corrigir texto de estado na página da cadeira 4
sed -i 's|<p><strong>Em desenvolvimento.</strong></p>|<p><strong>Concluída.</strong></p>|' cadeiras/cadeira-04-estudo-empresa.html

sed -i 's|<span class="badge desenvolvimento">🟡 Em desenvolvimento</span>|<span class="badge concluida">🟢 Concluída</span>|' cadeiras/cadeira-04-estudo-empresa.html

git add .
git commit -m "Marcar Introducao ao Estudo da Empresa como concluida"
git push

echo "Cadeira 4 marcada como concluída."
