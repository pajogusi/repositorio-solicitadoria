#!/bin/bash

echo "A adicionar aviso de construção e contacto..."

# Criar aviso na página principal, logo depois do parágrafo inicial
sed -i '/Projeto independente de estudo de Direito e Solicitadoria./a\
\
<section class="aviso">\
<h2>🚧 Projeto em Construção</h2>\
<p>Esta plataforma ainda está em desenvolvimento. As aulas estão a ser criadas gradualmente, seguindo uma estrutura de estudo independente em Direito e Solicitadoria.</p>\
<p>Para sugestões, correções ou contacto:</p>\
<p><a href="mailto:pajogusi.uk@gmail.com">📧 pajogusi.uk@gmail.com</a></p>\
</section>' index.html

# Acrescentar estilo visual do aviso
cat >> style.css << 'EOF'

.aviso {
    background: #fff3cd;
    border: 1px solid #ffec99;
    border-left: 6px solid #f0ad4e;
    padding: 20px;
    border-radius: 10px;
    margin: 25px 0;
}

.aviso h2 {
    margin-top: 0;
    color: #7a4d00;
}
EOF

# Atualizar versão do CSS para forçar refresh
sed -i 's|style.css?v=6|style.css?v=7|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html
sed -i 's|style.css?v=5|style.css?v=7|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html
sed -i 's|style.css?v=4|style.css?v=7|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html
sed -i 's|style.css?v=3|style.css?v=7|g' index.html cadeiras/*.html aulas/introducao-direito-i/*.html

git add .
git commit -m "Adicionar aviso de construcao e contacto"
git push

echo "Aviso de construção e email adicionados."
