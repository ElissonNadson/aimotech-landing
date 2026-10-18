# Aimotech — Territorial Game & Innovation Studio (Bahia, Brasil)

Landing page oficial do estúdio baiano de jogos autorais, propriedades intelectuais e inovação sociotécnica. Criador de **Trilhas da Terra**, **Algodão Doce**, **Tagboy e a Cidade Cinza**, **Biografia Preta**, **PVSC Sequeladus** e da metodologia **Black XP Game Lab**.

---

## 🎨 Design & Referências
- **Inspiração Visual:** Padrão estético autoral de estúdios globais independentes como [Ustwo Games](https://ustwogames.co.uk/) e [Thatgamecompany](http://thatgamecompany.com/).
- **Identidade Territorial:** Coordenadas de Salvador (12° 58' S) e Mucugê / Chapada Diamantina (12° 59' S).
- **Diretrizes Oficiais:** Especificação completa documentada em `DESIGN.md`.

---

## 🚀 Como Rodar Localmente

### Opção 1: Via Docker (Recomendado)
Para rodar sem precisar instalar Node.js:

```bash
# Subir o container em segundo plano:
docker compose up --build -d

# Acessar no navegador:
# http://localhost:4321
```

Para parar o container:
```bash
docker compose down
```

---

### Opção 2: Via Node.js (Desenvolvimento)
Requer **Node.js 20+** instalado:

```bash
# 1. Instalar dependências:
npm install

# 2. Iniciar servidor local com Hot-Reload:
npm run dev

# O site abrirá em:
# http://localhost:4321
```

---

## 📦 Build para Produção & Deploy

```bash
# Compilar versão estática de alta performance:
npm run build

# Pré-visualizar a build de produção localmente:
npm run preview

# Deploy automático na Hostinger (se configurado SSH):
./deploy.sh
```

---

## 📁 Estrutura do Projeto

```text
├── src/
│   ├── components/       # Componentes Astro isolados (Header, Hero, Games, BlackXP, etc.)
│   ├── data/             # Dados desacoplados em JSON (projects, events, mascote, services)
│   ├── layouts/          # Layout base com OpenGraph, SEO e Schema.org
│   ├── pages/            # Página principal index.astro
│   └── styles/           # Design System e tokens oficiais
├── assets/               # Fotografias documentais, renders 3D do mascote e artes
├── public/               # Assets públicos servidos na raiz
├── .specs/               # Especificação, tarefas e validação TLC Spec-Driven
├── Dockerfile            # Multi-stage build com Nginx Alpine
├── docker-compose.yml    # Configuração Docker para execução local imediata
└── deploy.sh             # Script de automação e deploy contínuo
```
