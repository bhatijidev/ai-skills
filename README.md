# 🚀 Universal AI Skills & MCP Ecosystem

A curated, battle-tested collection of **116 production-grade AI Agent Skills**, **20 specialized Sub-Agents**, and **Unified MCP Server Configurations** designed for **Google Antigravity**, **Claude Code**, **Cursor**, **Codex**, and modern AI pair-programming agents.

---

## ⚡ 1-Click Instant Setup for AI Agents

Whenever you connect an AI Agent (Antigravity, Claude Code, Cursor, etc.) to this repo, simply give it this prompt:

> **"Setup all skills and MCP configurations from this repository on my system."**

The agent will read [`AGENTS.md`](./AGENTS.md) and execute the automated setup autonomously!

---

### Manual Installation (If you want to run it yourself)

#### 🪟 Windows (PowerShell)
```powershell
git clone https://github.com/bhatijidev/ai-skills.git
cd ai-skills
powershell -ExecutionPolicy Bypass -File .\setup.ps1
```

#### 🍎 macOS / 🐧 Linux (Bash)
```bash
git clone https://github.com/bhatijidev/ai-skills.git
cd ai-skills
chmod +x setup.sh && ./setup.sh
```

---

## 📦 What is Included?

### 1. 🎬 Code-Driven Video & Animation Suite
* **`hyperframes`** *(HeyGen)*: High-end tech product launches, SaaS demos, kinetic typography, and 3D CSS transforms compiled into MP4 via Headless Chrome & FFmpeg.
* **`claude-animation`** *(buildwithhanif)*: Procedural hand-drawn 2D canvas animation (watercolor bleed, paper grain, ink hatch lines, biology cross-sections, and animated insect rigs).
* **`claude-animation-base`** *(JohnHeibel)*: Traditional 2D hand-painted cartoon animation engine featuring character rigs like Clawd (31 emotional expressions, walk cycles, turnarounds, 12fps boiling ink lines).
* **`vox-collage`** *(MegaTroll222)*: Vox / Johnny Harris style editorial paper-cutout B-roll explainers (halftone photo cutouts, stop-motion assembly, 3-gate approval protocol).
* **`lemo-opuscar`** *(lemomo-ai)*: Cinematic code-driven film studio with dozens of historical and artistic presets (Impasto Oil Painting, Japanese Ukiyo-e, Satellite Briefings, 3D CAD Teardowns).

### 2. 🔍 Enterprise SEO & GEO (AI Search Optimization)
* **Full Claude SEO Suite (v2.5.0)** with **33 skills** & **20 sub-agents**.
* **Technical SEO:** Crawlability, indexability, redirects, canonicals, sitemap discovery.
* **Core Web Vitals:** LCP subpart breakdown, INP optimization, render-blocking diagnostics.
* **GEO & AI Search:** Optimizing brand citability in ChatGPT, Perplexity, and Google AI Overviews (`seo-geo`).
* **Agentic Readiness:** Testing whether autonomous web browsing agents can navigate your site (`seo-agentic`).
* **Structured Data:** JSON-LD Schema generation and validation (`seo-schema`).
* **Content Architecture:** E-E-A-T analysis, content humanization, keyword clustering (`seo-cluster`).

### 3. 🎨 Elite Frontend Design & Anti-Slop UI Systems
* **`design-taste-frontend` (`taste-skill`)**: Anti-slop frontend engineering for landing pages and portfolios.
* **`high-end-visual-design` (`soft-skill`)**: Agency-grade typography, shadows, card structures, and spacing.
* **`industrial-brutalist-ui` (`brutalist-skill`)**: Swiss typographic print aesthetics meets declassified blueprint terminals.
* **`minimalist-ui` (`minimalist-skill`)**: Clean editorial monochrome aesthetics with flat bento layouts.
* **`stitch-design-taste` (`stitch-skill`)**: Google Stitch semantic design system integration.
* **`apple-design`**: Apple interface principles, fluid physics springs, optical sizing, and translucent materials.
* **`emil-design-eng`**: Micro-interactions, gesture feedback, and polish philosophy.
* **`gpt-taste`**: GSAP scroll triggers, bento layout variation, and editorial type rhythm.
* **`motion-framer`**: Production-ready React Framer Motion transitions and variants.

### 4. 🛡️ Mission-Critical Software Engineering (GRAVITAS)
* **`gravitas`**: Evidence-backed verification runtime for coding agents (measured, not claimed).
* **`gravitas-highstakes`**: Mandatory safety checkpoints for irreversible actions (migrations, production config, auth).
* **`gravitas-python` & `gravitas-typescript`**: Language-specific recon, strict typing, and test suites.
* **`test-driven-development` (TDD)**: Red-green-refactor loop enforcement.
* **`spec-driven-development`**: Architecture PRDs and capability mapping before coding.
* **`doubt-driven-development`**: Adversarial cross-examination of design decisions before implementation.
* **`security-and-hardening` & `strix`**: OWASP auditing, penetration testing, and vulnerability defense.

### 5. 🧠 Context Engineering & Multi-Agent Architecture
* **`context-engineering` & `context-optimization`**: Token budget allocation, prefix caching, observation masking.
* **`context-compression`**: Lossless structured handoffs and session compaction.
* **`multi-agent-patterns`**: Supervisor, swarm, and isolated parallel execution protocols.
* **`memory-systems` & `agentmemory`**: Persistent cross-session semantic memory.

---

## 🔌 Included MCP Servers (`mcp_config.json`)

| Server | Purpose | Run Command |
| :--- | :--- | :--- |
| **Playwright** | Real browser automation, screenshot capture, DOM scraping | `npx -y @playwright/mcp@latest` |
| **Filesystem** | Local directory read/write tools | `npx -y @modelcontextprotocol/server-filesystem .` |
| **GitHub** | PRs, Issues, and Repository management | `npx -y @modelcontextprotocol/server-github` |
| **Shadcn-UI** | Search & install UI components directly | `npx -y @sherifbutt/shadcn-ui-mcp-server` |
| **Crawl4AI** | High-speed LLM-friendly web crawling & markdown extraction | `python -m mcp_crawl4ai` |
| **REA** | Reverse engineering & binary analysis runtime | `npx -y rea-agents mcp` |
| **BrowserOS Neo** | Real user profile persistent browser integration | `http://127.0.0.1:9010/mcp` |

---

## 📄 License

This repository aggregates open-source skills licensed under MIT, Apache 2.0, and related open licenses. Individual skill licenses are retained within each skill directory.
