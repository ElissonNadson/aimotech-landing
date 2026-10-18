# Landing Page Modular, Jogos Autorais e Mosaico Black XP Specification

## Problem Statement

A Aimotech possuía um arquivo monolítico `index.html` de ~2.500 linhas que dificultava a manutenção, misturava dados com estilos e não refletia todo o potencial revelado no novo portfólio oficial de 2026 e no acervo real da Black XP. É necessário modularizar o ecossistema com Astro, transformar a seção de Jogos Autorais no padrão estético e narrativo de estúdios de ponta como Ustwo Games (`https://ustwogames.co.uk/our-games/`), conectar o site oficial de *Trilhas da Terra* (`https://www.trilhasdaterra.com.br`) e criar um mosaico documental vibrante dos eventos da Black XP com o mascote 3D oficial.

## Goals

- [ ] Modularizar a landing page em componentes Astro desacoplados com dados em arquivos JSON tipados (`projects.json`, `events.json`, `services.json`, `partners.json`).
- [ ] Implementar a seção de Jogos Autorais inspirada em Ustwo Games com cards imersivos, fichas técnicas completas e link oficial para Trilhas da Terra.
- [ ] Construir um mosaico fotográfico documental da Black XP com fotos autênticas dos eventos (2ª Edição no Museu da Energia, Woman Lab, SENAI BTX 25) e integração do mascote 3D oficial.
- [ ] Garantir 100% de conformidade com o `DESIGN.md` (paleta sólida, raios 6px/12px/999px, tipografia Manrope/Inter, anti-slop).

## Out of Scope

Explicitly excluded. Documented to prevent scope creep.

| Feature | Reason |
| ------- | ------ |
| Sistema de autenticação de usuários ou login | Landing page institucional e de vitrine pública não requer área logada |
| Backend de banco de dados dinâmico | O projeto gera páginas estáticas ultra-rápidas via Astro SSG com dados em JSON |
| Criação de checkout ou processador de pagamentos | Venda de ingressos ou patrocínios é intermediada via contato institucional |

---

## Assumptions & Open Questions

Every ambiguity is resolved or recorded here - nothing is left silently unclear.

| Assumption / decision | Chosen default | Rationale | Confirmed? |
| --------------------- | -------------- | --------- | ---------- |
| Estrutura de dados dos jogos | JSON em `src/data/projects.json` | Desacopla a manutenção de conteúdo da camada de template Astro | y |
| Formato dos assets de imagem | WebP com fallback visual | Melhora em até 60% a velocidade de carregamento preservando fidelidade | y |
| Inspiração de botões e cartões da Ustwo Games | Adaptação estrita à paleta do DESIGN.md | Mantém sofisticação de estúdio internacional sem violar a identidade visual baiana | y |
| Mascote 3D da Black XP | Inclusão de renders de alta resolução com fundo transparente | Destaca a identidade visual proprietária nos eventos e cabeçalho | y |

**Open questions:** none - all resolved or logged above (required before the spec is confirmed).

---

## User Stories

### P1: Vitrine de Jogos Autorais Estilo Ustwo Games ⭐ MVP

**User Story**: As a visitante, investidor ou player internacional, I want visualizar os jogos autorais da Aimotech com cards amplos, recortes de personagens e fichas técnicas so that compreenda a originalidade e o valor artístico e comercial das produções.

**Why P1**: O estúdio precisa se posicionar de imediato como desenvolvedor autoral de games de impacto e padrão internacional.

**Acceptance Criteria**:

1. The system SHALL render a featured spotlight card for *Trilhas da Terra* containing gameplay specs, community credits, location gallery, and an external link to `https://www.trilhasdaterra.com.br`.
2. The system SHALL display secondary cards for *Algodão Doce*, *Tagboy e a Cidade Cinza*, *Biografia Preta* and *PVSC Sequeladus* with territory metadata and mechanics descriptions.
3. WHEN the user clicks on the Trilhas da Terra official website button THEN the system SHALL open `https://www.trilhasdaterra.com.br` in a new browser tab with secure `rel="noopener noreferrer"` attributes.
4. The system SHALL adhere strictly to the color palette (`#7C4DFF`, `#171717`, `#E8E3DA`, `#F8F6F2`, `#2E7D5B`) and corner radii (6px, 12px, 999px) defined in `DESIGN.md`.

**Independent Test**: Can demo by navigating to the `#jogos` section, verifying all 5 games rendered with respective assets, and clicking the Trilhas da Terra official website link.

---

### P2: Mosaico Fotográfico Documental e Mascote 3D Black XP

**User Story**: As an educador, parceiro público ou participante, I want explorar os registros visuais autênticos dos eventos Black XP e conhecer o mascote 3D so that sinta a vibração, legitimidade e seriedade da formação sociotécnica.

**Why P2**: Constrói autoridade institucional e prova com imagens reais que o impacto social é genuíno.

**Acceptance Criteria**:

1. The system SHALL render an interactive photo mosaic displaying official photographs from the 2nd Black XP (Museu da Energia), Black XP Woman Lab, and Meetup SENAI/BTX.
2. The system SHALL display the high-resolution 3D mascot render of Black XP with a transparent background in the Black XP section.
3. WHEN a user clicks on an edition selector tab THEN the system SHALL switch the active panel to show the corresponding event photos, audience count, and achievements.
4. The system SHALL provide descriptive captions and accessibility `alt` texts for every photograph displayed in the gallery.

**Independent Test**: Can demo by switching between the 3 edition tabs, checking that real photos load instantly without broken links, and confirming the 3D mascot render is cleanly positioned.

---

### P3: Modularização Astro e Formulário de Contato com Validação

**User Story**: As a desenvolvedor e mantenedor do site, I want a base de código modularizada em Astro com formulário de contato integrado so that possa atualizar dados facilmente e receber solicitações de coprodução e palestras.

**Why P3**: Permite que a equipe adicione novos jogos, fotos e eventos editando apenas arquivos JSON locais.

**Acceptance Criteria**:

1. The system SHALL build statically into pure HTML/CSS without errors when executing `npx astro build`.
2. WHEN the user submits the contact form with valid inputs THEN the system SHALL display a confirmation feedback message to the user.
3. IF any required input field is missing or invalid THEN the system SHALL prevent submission and display native validation errors.

**Independent Test**: Can demo by running `npm run build` with exit code 0 and submitting the contact form on the live site.

---

## Edge Cases

- IF an image fails to load THEN the system SHALL display accessible alt text and maintain the card aspect ratio without breaking layout grid.
- IF a user accesses the site on a small mobile device (320px) THEN the system SHALL adapt the games cards and Black XP mosaic into single-column responsive viewports without horizontal scroll.
- WHILE navigating via keyboard THEN the system SHALL provide visible focus rings on all interactive links, buttons, and form controls.

---

## Requirement Traceability

Each requirement gets a unique ID for tracking across design, tasks, and validation.

| Requirement ID | Story | Phase | Status |
| -------------- | ----- | ----- | ------ |
| GAME-01 | P1: Vitrine de Jogos Autorais | Execute | Verified |
| GAME-02 | P1: Vitrine de Jogos Autorais | Execute | Verified |
| GAME-03 | P1: Vitrine de Jogos Autorais | Execute | Verified |
| EVNT-01 | P2: Mosaico Black XP & Mascote | Execute | Verified |
| EVNT-02 | P2: Mosaico Black XP & Mascote | Execute | Verified |
| EVNT-03 | P2: Mosaico Black XP & Mascote | Execute | Verified |
| ARCH-01 | P3: Modularização Astro | Execute | Verified |
| ARCH-02 | P3: Modularização Astro | Execute | Verified |

**Coverage:** 8 total, 8 mapped to tasks, 0 unmapped

---

## Success Criteria

How we know the feature is successful:

- [ ] `npx astro build` executes with zero errors and outputs a complete static site into `dist/`.
- [ ] All 5 games from the Canva portfolio and Trilhas da Terra are displayed with accurate artwork, copy, and official links.
- [ ] Black XP section displays real photographs from the 3 editions and incorporates the official 3D mascot in high definition.
- [ ] Visual style closely references the layout and button elegance of `https://ustwogames.co.uk/our-games/` while strictly honoring `DESIGN.md`.
