#!/bin/bash

cd ~/universidade-da-vida-direito

echo "Criar LICENSE.md..."

cat > LICENSE.md << 'EOF'
Copyright © 2026 Paulo Silva / Pàjó

Todos os direitos reservados.

Este projeto, incluindo textos, aulas, estrutura pedagógica, código HTML, CSS, JavaScript, imagens, documentação e materiais associados, é propriedade intelectual do autor.

É permitida a consulta e utilização para estudo pessoal.

Não é permitida a cópia, republicação, distribuição, venda, adaptação, tradução ou reutilização total ou parcial sem autorização escrita do autor.

Contacto:
pajogusi.uk@gmail.com
EOF

echo "Criar COPYRIGHT.md..."

cat > COPYRIGHT.md << 'EOF'
UNIVERSIDADE DA VIDA

Autor:
Paulo Silva (Pàjó)

Ano de início:
2026

Descrição:
Projeto independente de estudo de Direito e Solicitadoria.

Proteção:
Todo o conteúdo encontra-se protegido por direitos de autor.

Utilização:
Permitida apenas para estudo pessoal.

Contacto:
pajogusi.uk@gmail.com
EOF

echo "Adicionar rodapé..."

cat >> style.css << 'EOF'

.footer-copyright{
margin-top:40px;
padding:20px;
font-size:0.85em;
text-align:center;
color:#666;
border-top:1px solid #ddd;
}
EOF

echo '
<div class="footer-copyright">
© 2026 Paulo Silva / Pàjó - Todos os direitos reservados.
<br>
Conteúdo disponibilizado apenas para estudo pessoal.
</div>
' >> index.html

git add .
git commit -m "Adicionar protecao de direitos de autor"
git push

echo "Proteção adicionada."
