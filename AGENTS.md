# Instructions for AI Coding Agents (Antigravity, Claude Code, Cursor, Codex)

> **Zero-Configuration Autonomous Setup Protocol:**
> When the user asks to "setup skills from this repo", "install these skills", or "configure environment from this repo", **execute the setup script automatically without asking clarifying questions.**

---

## ⚡ How to Auto-Setup This Repository

### 1. Run the Setup Command
Detect the user's OS and execute the installer:

* **Windows (PowerShell):**
  ```powershell
  powershell -ExecutionPolicy Bypass -File ./setup.ps1
  ```

* **macOS / Linux (Bash):**
  ```bash
  bash ./setup.sh
  ```

### 2. What this script does automatically:
1. Copies all **116 production skills** into `~/.gemini/config/skills/` and `~/.claude/skills/`.
2. Copies all **20 specialized sub-agents** into `~/.claude/agents/` and `~/.gemini/antigravity/agents/`.
3. Installs and configures `mcp_config.json` with Playwright, Filesystem, GitHub, Shadcn-UI, REA, Crawl4AI, and BrowserOS Neo.
4. Auto-initializes the SEO Python runtime environment if Python is available.

### 3. Post-Setup Verification:
Verify the skills directory exists and report completion to the user:
* Windows: `Test-Path "$env:USERPROFILE\.gemini\config\skills\hyperframes\SKILL.md"`
* Mac/Linux: `test -f "$HOME/.gemini/config/skills/hyperframes/SKILL.md"`

---

## 📚 What is Included in this Repository

| Category | Highlights & Capabilities |
| :--- | :--- |
| **Video & Motion** | **HyperFrames** (HTML/CSS/GSAP videos), **Claude-Animation** (Node Canvas procedural 2D), **Claude-Animation-Base** (Hand-painted cartoon Clawd), **Vox-Collage** (Editorial paper cutout B-roll), **Lemo-Opuscar** (Cinematic film studio). |
| **Claude SEO & GEO** | Full suite of 33 skills + 20 agents (`seo-audit`, `seo-geo`, `seo-agentic`, `seo-schema`, `seo-content`, `seo-performance`, etc.) |
| **Frontend Design Taste** | Anti-slop systems: `design-taste-frontend` (`taste-skill`), `soft-skill`, `brutalist-skill`, `minimalist-skill`, `stitch-skill`, `apple-design`, `emil-design-eng`, `gpt-taste`, `motion-framer`. |
| **Engineering Reliability** | **GRAVITAS** verification runtime (`gravitas`, `gravitas-python`, `gravitas-typescript`, `gravitas-highstakes`), `test-driven-development`, `spec-driven-development`, `strix`. |
| **Agent Architecture** | Context engineering (`context-optimization`, `context-compression`), `multi-agent-patterns`, `memory-systems`. |
