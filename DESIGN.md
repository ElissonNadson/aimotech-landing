# DESIGN.md — Aimotech (Cartografia do Futuro)
Especificação oficial de Design System para validação contínua com **Impeccable** (`npx impeccable detect`).

## 1. Direção Estética
- **Conceito:** Cartografia do Futuro — rotas, coordenadas, percursos e fotografia documental real da Bahia.
- **Anti-Slop Policy:** Proibido uso de gradientes roxos/neon, *glassmorphism* (`backdrop-filter`), *side-tab borders* (`border-left: 4px`), *cards* aninhados (*Cardocalypse*), ícones em caixas arredondadas acima de títulos, ou animações elásticas de *hover*.

## 2. Paleta Documentada (Cores Sólidas)
- `--aimo-purple`: `#7C4DFF` (Acento primário, CTAs, nós cartográficos)
- `--aimo-purple-hover`: `#6838EB` (Hover de CTA primário)
- `--graphite`: `#171717` (Superfícies escuras: Projetos, Black XP, Footer e texto principal)
- `--graphite-surface`: `#202020` (Superfície elevada em seções escuras)
- `--warm-gray`: `#E8E3DA` (Superfície da seção Como Trabalhamos)
- `--off-white`: `#F8F6F2` (Superfície principal de leitura: Hero, Serviços, Experiência, Card de Contato)
- `--pure-white`: `#FFFFFF` (Campos de formulário e contraste)
- `--verde-mata`: `#2E7D5B` (Frente Conhecimento & Formação / Trilhas da Terra)
- `--azul-profundo`: `#204A7A` (Tecnologia & IA / Biografia Preta - Wini.IA)
- `--terracota`: `#B75A36` (Cultura & Memória / Algodão Doce)
- `--cinza-medio`: `#A7A3A0` (Metadados e apoio)

## 3. Tipografia Documentada
- **Display & Headings (`h1`, `h2`, `h3`, botões):** `Manrope` (pesos `600`, `700`, `800`), `line-height: 1.14`, `letter-spacing: -0.02em`.
- **Body & Interface:** `Inter` (pesos `400`, `500`, `600`), `font-size: 16px` base, `line-height: 1.6`, largura máxima de linha de `66ch`.
- **Hierarquia sem saltos:** Sempre `h1` -> `h2` -> `h3` (nunca pular de `h1` para `h4` ou `h2` para `h4`).

## 4. Escala de Raios (Corner Radii)
Apenas 3 valores permitidos em todo o código:
- `6px` (`--radius-control`): Inputs, selects, textareas, miniaturas.
- `12px` (`--radius-surface`): Molduras fotográficas, superfície do formulário e modal.
- `999px` (`--radius-pill`): Botões primários/secundários e seletor PT/ES.
