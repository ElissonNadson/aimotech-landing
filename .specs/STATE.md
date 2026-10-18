# STATE.md — Project Memory & Decisions

## Decisions Log

### AD-001: Modularização e Static Site Generator com Astro
- **Data:** 2026-10-18
- **Contexto:** O projeto anterior consistia em um arquivo monolítico `index.html` de ~2.500 linhas mesclando CSS, HTML e scripts.
- **Decisão:** Adotar Astro como SSG (Static Site Generator) com componentes isolados e dados JSON desacoplados em `src/data/`, gerando HTML estático puro de altíssima performance (zero JavaScript no cliente por padrão).
- **Consequências:** Manutenibilidade alta, separação estrita de dados/apresentação, tempos de carregamento < 100ms e 100% de conformidade com Core Web Vitals.

### AD-002: Identidade Visual e Inspiração Ustwo Games + Thatgamecompany
- **Data:** 2026-10-18
- **Contexto:** O usuário solicitou que a experiência visual e a seção de jogos seguissem a referência de `https://ustwogames.co.uk/our-games/`, mantendo a originalidade territorial da Bahia e a paleta documentada em `DESIGN.md`.
- **Decisão:** Estruturar os jogos em cards amplos, com personagens destacados em recorte, ficha técnica profunda (território, mecânicas, gênero), link oficial para Trilhas da Terra (`https://www.trilhasdaterra.com.br`) e tipografia Manrope/Inter com botões arredondados e cores da paleta oficial (`#7C4DFF`, `#171717`, `#E8E3DA`, `#F8F6F2`, `#2E7D5B`).
- **Consequências:** O estúdio se posiciona no mesmo patamar de estúdios independentes autorais de prestígio global.

### AD-003: Mosaico Fotográfico Documental e Mascote 3D da Black XP
- **Data:** 2026-10-18
- **Contexto:** O usuário solicitou um mosaico rico de fotos reais dos eventos da Black XP e a integração dos novos renders 3D do mascote oficial da Black XP anexados em `mascote da blackxp.rar`.
- **Decisão:** Criar um componente de mosaico documental com fotos reais de Jefferson Peixoto/SECOM PMS (2ª Edição no Museu da Energia), Black XP Woman Lab e BTX 25 no SENAI Cimatec, com o mascote 3D em alta resolução transparente integrado harmonicamente.
- **Consequências:** Zero placeholders; autoridade e impacto social comprovados com rostos reais da juventude e de lideranças da Bahia.

---

## Handoff Snapshot

- **Feature Ativa:** `landing-modular-games-events`
- **Fase Atual:** Specify & Tasks (TLC Spec-Driven)
- **Status dos Assets:** 
  - Mascote 3D Black XP extraído e otimizado em WebP transparente (6 poses).
  - 16 fotos oficiais dos eventos da Black XP otimizadas em WebP.
  - Assets de Trilhas da Terra e outros 4 jogos integrados.
- **Próximos Passos:** Validar especificação com `validate_spec.py`, elaborar `tasks.md`, validar com `validate_tasks.py` e executar a montagem e build final do Astro.
