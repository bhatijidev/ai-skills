# Claude Code Skill Setup Guide

When requested to setup or install skills from this repository, run the automatic installer:

```bash
# Windows
powershell -ExecutionPolicy Bypass -File ./setup.ps1

# macOS / Linux
bash ./setup.sh
```

This installs:
- 116 ready-to-use skills into `~/.claude/skills` and `~/.gemini/config/skills`
- 20 sub-agents into `~/.claude/agents`
- Unified MCP server configuration template
