# Landing Page Modular, Jogos Autorais e Mosaico Black XP Tasks

## Execution Protocol (MANDATORY -- do not skip)

Implement these tasks with the `tlc-spec-driven` skill: **activate it by name and follow its Execute flow and Critical Rules.** Do not search for skill files by filesystem path. The skill is the source of truth for the full flow (per-task cycle, sub-agent delegation, adequacy review, Verifier, discrimination sensor).

**If the skill cannot be activated, STOP and tell the user - do not proceed without it.**

---

**Design**: `.specs/features/landing-modular-games-events/spec.md`
**Status**: Approved

---

## Test Coverage Matrix

> Generated from codebase, project guidelines, and spec - confirm before Execute. Guidelines found: `DESIGN.md`, `AGENTS.md`.

| Code Layer | Required Test Type | Coverage Expectation | Location Pattern | Run Command |
| ---------- | ------------------ | -------------------- | ---------------- | ----------- |
| Data / JSON | unit | Valid JSON syntax, required properties present | `src/data/*.json` | `node -e "JSON.parse(require('fs').readFileSync('src/data/projects.json'))"` |
| Astro Components | integration | Syntax and markup verification | `src/components/*.astro` | `npx astro check` |
| Build Output | e2e | Static HTML generation and asset integrity | `dist/index.html` | `npx astro build` |

## Gate Check Commands

> Generated from codebase - confirm before Execute.

| Gate Level | When to Use | Command |
| ---------- | ----------- | ------- |
| Quick | After data or single component edits | `node -e "JSON.parse(require('fs').readFileSync('src/data/mascote.json'))"` |
| Full | After component integration | `npx astro check` |
| Build | After final assembly | `npx astro build && test -f dist/index.html` |

---

## Execution Plan

Phases are ordered and run sequentially - each phase completes before the next begins, and tasks within a phase execute in order.

### Phase 1: Assets and Games Architecture

```
T1 → T2
```

### Phase 2: Black XP Mosaic and Mascot

```
T3 → T4
```

### Phase 3: Assembly and Verification

```
T5 → T6
```

---

## Task Breakdown

### Phase 1: Assets and Games Architecture

#### T1: Integrate Black XP Mascot Data

**What**: Create JSON metadata file cataloging the 3D mascot poses and usage contexts.
**Where**: `src/data/mascote.json`
**Depends on**: None
**Reuses**: `assets/fotos/mascote/`
**Requirement**: EVNT-02

**Tools**:

- MCP: `filesystem`
- Skill: NONE

**Done when**:

- [x] File `src/data/mascote.json` created with 6 poses and labels
- [x] Valid JSON syntax
- [x] Gate check passes: `node -e "JSON.parse(require('fs').readFileSync('src/data/mascote.json'))"`

**Tests**: unit
**Gate**: quick

---

#### T2: Refine Games Section with Ustwo Games Architecture

**What**: Elevate GamesSection to mirror the wide-card, cutout-character and pill-button aesthetic of Ustwo Games.
**Where**: `src/components/GamesSection.astro`
**Depends on**: T1
**Reuses**: `src/data/projects.json`
**Requirement**: GAME-01

**Tools**:

- MCP: `filesystem`
- Skill: NONE

**Done when**:

- [x] Cards display character cutout visual side-by-side with narrative synopsis
- [x] Official link to `https://www.trilhasdaterra.com.br` styled with pill button and arrow
- [x] Gate check passes: `npx astro check`

**Tests**: integration
**Gate**: quick

---

### Phase 2: Black XP Mosaic and Mascot

#### T3: Build Black XP Photo Mosaic Component

**What**: Create a dedicated masonry/mosaic photo component rendering the real events gallery.
**Where**: `src/components/BlackXPMosaic.astro`
**Depends on**: None
**Reuses**: `src/data/events.json`
**Requirement**: EVNT-01

**Tools**:

- MCP: `filesystem`
- Skill: NONE

**Done when**:

- [x] Responsive multi-column mosaic grid with varying card spans
- [x] Real photographs with captions and hover zoom
- [x] Gate check passes: `npx astro check`

**Tests**: integration
**Gate**: quick

---

#### T4: Integrate Mosaic and 3D Mascot into Black XP Section

**What**: Integrate the BlackXPMosaic component and mascot render into BlackXPSection.
**Where**: `src/components/BlackXPSection.astro`
**Depends on**: T3
**Reuses**: `src/components/BlackXPMosaic.astro`
**Requirement**: EVNT-03

**Tools**:

- MCP: `filesystem`
- Skill: NONE

**Done when**:

- [x] Mascot 3D render displayed beside the section header
- [x] Photo mosaic rendered dynamically for each edition
- [x] Gate check passes: `npx astro check`

**Tests**: integration
**Gate**: quick

---

### Phase 3: Assembly and Verification

#### T5: Assemble Modular Index Page

**What**: Create the main entry page assembling all modular components in order.
**Where**: `src/pages/index.astro`
**Depends on**: None
**Reuses**: `src/layouts/Layout.astro`
**Requirement**: ARCH-01

**Tools**:

- MCP: `filesystem`
- Skill: NONE

**Done when**:

- [x] Page imports and renders Header, Hero, StudioManifesto, GamesSection, BlackXPSection, ServicesSection, ProcessSection, ExperienceSection, ContactSection, Footer
- [x] Zero markup duplication
- [x] Gate check passes: `npx astro check`

**Tests**: integration
**Gate**: full

---

#### T6: Build Static Output and Verify Integrity

**What**: Execute full static build and verify generated HTML and assets.
**Where**: `dist/index.html`
**Depends on**: T5
**Reuses**: `astro.config.mjs`
**Requirement**: ARCH-02

**Tools**:

- MCP: `filesystem`
- Skill: NONE

**Done when**:

- [x] Command `npx astro build` completes with exit code 0
- [x] File `dist/index.html` exists and contains all sections
- [x] Gate check passes: `test -f dist/index.html`

**Tests**: e2e
**Gate**: build

---

## Pre-Approval Validation Results

### Diagram-Definition Cross-Check

| Task | Diagram Predecessor | `Depends on` Field | Match? |
| ---- | ------------------- | ------------------ | ------ |
| T1 | None | None | ✅ |
| T2 | T1 | T1 | ✅ |
| T3 | None | None | ✅ |
| T4 | T3 | T3 | ✅ |
| T5 | None | None | ✅ |
| T6 | T5 | T5 | ✅ |

### Test Co-location Validation

| Task | Code Layer | Required Test Type | Task Tests Field | Co-located? |
| ---- | ---------- | ------------------ | ---------------- | ----------- |
| T1 | Data / JSON | unit | unit | ✅ |
| T2 | Astro Component | integration | integration | ✅ |
| T3 | Astro Component | integration | integration | ✅ |
| T4 | Astro Component | integration | integration | ✅ |
| T5 | Page Assembly | integration | integration | ✅ |
| T6 | Build Output | e2e | e2e | ✅ |
