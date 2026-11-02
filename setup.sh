#!/usr/bin/env bash
# ==============================================================================
# AI Skills & MCP Automated Installer for macOS & Linux
# Compatible with: Antigravity, Claude Code, Cursor, Codex, OpenCode
# ==============================================================================

set -e

echo "=========================================================="
echo "   AI Skills & MCP Environment Auto-Installer (Unix)      "
echo "=========================================================="
echo ""

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

GEMINI_SKILLS_DIR="$HOME/.gemini/config/skills"
CLAUDE_SKILLS_DIR="$HOME/.claude/skills"
CLAUDE_AGENTS_DIR="$HOME/.claude/agents"
GEMINI_AGENTS_DIR="$HOME/.gemini/antigravity/agents"
GEMINI_MCP_CONFIG="$HOME/.gemini/config/mcp_config.json"

mkdir -p "$GEMINI_SKILLS_DIR"
mkdir -p "$CLAUDE_SKILLS_DIR"
mkdir -p "$CLAUDE_AGENTS_DIR"
mkdir -p "$GEMINI_AGENTS_DIR"

# 1. Install Skills
if [ -d "$SCRIPT_DIR/skills" ]; then
    echo "[+] Installing 116 Skills..."
    cp -rf "$SCRIPT_DIR/skills/"* "$GEMINI_SKILLS_DIR/"
    cp -rf "$SCRIPT_DIR/skills/"* "$CLAUDE_SKILLS_DIR/"
    echo "[✓] Installed skills into Antigravity & Claude directories!"
fi

# 2. Install Sub-Agents
if [ -d "$SCRIPT_DIR/agents" ]; then
    echo "[+] Installing specialized AI Sub-Agents..."
    cp -rf "$SCRIPT_DIR/agents/"* "$CLAUDE_AGENTS_DIR/"
    cp -rf "$SCRIPT_DIR/agents/"* "$GEMINI_AGENTS_DIR/"
    echo "[✓] Sub-agents installed!"
fi

# 3. Configure MCP Servers
if [ -f "$SCRIPT_DIR/mcp_config.json" ]; then
    if [ ! -f "$GEMINI_MCP_CONFIG" ]; then
        cp -f "$SCRIPT_DIR/mcp_config.json" "$GEMINI_MCP_CONFIG"
        echo "[✓] Configured mcp_config.json at $GEMINI_MCP_CONFIG"
    else
        echo "[i] mcp_config.json already exists (preserved existing file)"
    fi
fi

# 4. Initialize SEO Runtime if Python exists
if [ -f "$GEMINI_SKILLS_DIR/seo/scripts/runtime.py" ]; then
    if command -v python3 &>/dev/null; then
        echo "[+] Initializing Claude SEO Python runtime..."
        python3 "$GEMINI_SKILLS_DIR/seo/scripts/runtime.py" setup || true
        echo "[✓] SEO Python environment configured!"
    fi
fi

echo ""
echo "=========================================================="
echo "   SUCCESS: AI Skills & MCP Ecosystem is fully ready!     "
echo "=========================================================="
echo "Skills installed in: $GEMINI_SKILLS_DIR"
echo "Agents installed in: $GEMINI_AGENTS_DIR"
echo "MCP Config file:     $GEMINI_MCP_CONFIG"
echo ""
