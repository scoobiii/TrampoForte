#!/bin/bash
# ================================================
# Setup Completo TrampoForte - Versão Corrigida
# ================================================

set -e

echo "🚀 Iniciando setup completo do TrampoForte..."

# Criar estrutura
mkdir -p trampoforte/documentos trampoforte/docs
cd trampoforte

# 1. README.md
cat > README.md << 'EOF'
# 🛠️ TrampoForte

> Garantia de créditos trabalhistas e participação societária para trabalhadores.

**Iniciativa legislativa** para alterar a Lei 11.101/2005 (Recuperação Judicial).

## Objetivos Principais
- Prioridade absoluta de créditos trabalhistas (salários, PLR, etc.)
- Participação acionária proporcional de trabalhadores diretos, colaboradores e terceirizados

**Proponente:** Jose Soares Sobrinho

---
**Documentos prontos** na pasta `documentos/`
EOF

# 2. index.html (site atrativo)
cat > index.html << 'HTML_EOF'
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TrampoForte - Justiça Trabalhista</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
  <style>
    body { font-family: system-ui, sans-serif; background: #0f172a; color: #e2e8f0; margin: 0; padding: 0; }
    .container { max-width: 1100px; margin: 0 auto; padding: 2rem; }
    header { text-align: center; padding: 3rem 0; }
    .logo { font-size: 3.5rem; font-weight: 900; color: #60a5fa; }
    .hero { background: rgba(16, 185, 129, 0.15); padding: 3rem; border-radius: 16px; text-align: center; margin: 2rem 0; }
    .btn { padding: 14px 32px; background: #0066cc; color: white; text-decoration: none; border-radius: 8px; font-weight: 600; margin: 10px; }
    .card { background: #1e2937; padding: 1.5rem; border-radius: 12px; margin: 1rem 0; }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <div class="logo">🛠️ TrampoForte</div>
      <p style="font-size:1.4rem;">Prioridade ao Trabalhador na Recuperação Judicial</p>
    </header>
    
    <div class="hero">
      <h1>Trabalhador não é credor de segunda classe</h1>
      <a href="documentos/PL_Creditos_Trabalhistas.md" class="btn">Ver Projeto de Lei</a>
      <a href="documentos/Requerimento_CLP.md" class="btn">Ver Requerimento</a>
    </div>
  </div>
</body>
</html>
HTML_EOF

# 3. Documentos principais
cat > documentos/PL_Creditos_Trabalhistas.md << 'PL_EOF'
# PROJETO DE LEI Nº , DE 2026

**Altera a Lei nº 11.101, de 9 de fevereiro de 2005.**

O Congresso Nacional decreta:

**Art. 1º** A Lei nº 11.101/2005 passa a vigorar com as seguintes alterações:

**"Art. 54.** Os créditos derivados da legislação trabalhista, incluindo salários, verbas rescisórias, FGTS, acidentes de trabalho e PLR constituem prioridade absoluta..."

*(Insira aqui o texto completo que já temos do PL)*

**JUSTIFICAÇÃO**

Valorização da força de trabalho em processos de recuperação judicial.
PL_EOF

cat > documentos/Requerimento_CLP.md << 'REQ_EOF'
# REQUERIMENTO DE SUGESTÃO LEGISLATIVA

Ao Senhor Presidente da Comissão de Legislação Participativa...

*(Insira o texto completo do requerimento)*
REQ_EOF

# 4. Arquivos complementares
cat > .gitignore << 'GIT_EOF'
*.pdf
*.log
.DS_Store
.vscode/
.idea/
GIT_EOF

cat > LICENSE << 'MIT_EOF'
MIT License - 2026 TrampoForte
MIT_EOF

cat > CONTRIBUTING.md << 'CONTRIB_EOF'
# Como Contribuir

- Abra Issues
- Envie Pull Requests
- Melhore a redação legislativa
CONTRIB_EOF

cat > docs/ROADMAP.md << 'ROADMAP_EOF'
# Roadmap

- [x] Estrutura do repositório
- [ ] Campanha de divulgação
- [ ] Envio oficial à Câmara dos Deputados
ROADMAP_EOF

cat > docs/HISTORICO.md << 'HIST_EOF'
# Histórico

**2026-05-22** - Criação inicial do projeto com site HTML.
HIST_EOF

echo "✅ Setup concluído com sucesso!"
echo "📍 Local: $(pwd)"
ls -la
echo ""
echo "Para visualizar o site: abra o arquivo index.html no navegador."
