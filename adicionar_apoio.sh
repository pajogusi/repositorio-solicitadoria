#!/bin/bash

cd ~/universidade-da-vida-direito

cat >> style.css << 'EOF'

.apoio {
    margin-top: 40px;
    padding: 20px;
    background: #f5f5f5;
    border-radius: 10px;
    text-align: center;
    font-size: 0.95em;
}

.apoio h3 {
    margin-top: 0;
}
EOF

echo '
<div class="apoio">
<h3>☕ Apoiar o Projeto</h3>

<p>
A Repositório de Solicitadoria é um projeto independente criado para fins educativos.
</p>

<p>
Se este conteúdo te ajudou e quiseres apoiar o desenvolvimento futuro do projeto:
</p>

<p>
PayPal: <strong>pajogusi.uk@gmail.com</strong>
</p>

<p>
Obrigado pelo teu apoio.
</p>
</div>
' >> index.html

git add .
git commit -m "Adicionar secao de apoio ao projeto"
git push

echo "Secção de apoio adicionada."
