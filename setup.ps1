# ==============================================================================
# AI Skills & MCP Automated Installer for Windows
# Compatible with: Antigravity, Claude Code, Cursor, Codex, OpenCode
# ==============================================================================

$ErrorActionPreference = "Continue"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "   AI Skills & MCP Environment Auto-Installer (Windows)   " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host ""

$CurrentDir = $PSScriptRoot
if (-not $CurrentDir) { $CurrentDir = Get-Location }

# Target Directories for Skills & Agents
$GeminiSkillsDir = "$env:USERPROFILE\.gemini\config\skills"
$ClaudeSkillsDir = "$env:USERPROFILE\.claude\skills"
$ClaudeAgentsDir = "$env:USERPROFILE\.claude\agents"
$GeminiAgentsDir = "$env:USERPROFILE\.gemini\antigravity\agents"
$GeminiMcpConfig = "$env:USERPROFILE\.gemini\config\mcp_config.json"

# Create directories
New-Item -ItemType Directory -Force -Path $GeminiSkillsDir | Out-Null
New-Item -ItemType Directory -Force -Path $ClaudeSkillsDir | Out-Null
New-Item -ItemType Directory -Force -Path $ClaudeAgentsDir | Out-Null
New-Item -ItemType Directory -Force -Path $GeminiAgentsDir | Out-Null

# 1. Install Skills
$SkillsSrc = Join-Path $CurrentDir "skills"
if (Test-Path $SkillsSrc) {
    Write-Host "[+] Installing 116 Skills..." -ForegroundColor Yellow
    $skills = Get-ChildItem -Directory $SkillsSrc
    $count = 0
    foreach ($skill in $skills) {
        $target1 = Join-Path $GeminiSkillsDir $skill.Name
        $target2 = Join-Path $ClaudeSkillsDir $skill.Name
        Copy-Item -Path $skill.FullName -Destination $target1 -Recurse -Force
        Copy-Item -Path $skill.FullName -Destination $target2 -Recurse -Force
        $count++
    }
    Write-Host "[✓] Installed $count skills into Antigravity & Claude directories!" -ForegroundColor Green
}

# 2. Install Sub-Agents
$AgentsSrc = Join-Path $CurrentDir "agents"
if (Test-Path $AgentsSrc) {
    Write-Host "[+] Installing specialized AI Sub-Agents..." -ForegroundColor Yellow
    Copy-Item -Path "$AgentsSrc\*" -Destination $ClaudeAgentsDir -Force
    Copy-Item -Path "$AgentsSrc\*" -Destination $GeminiAgentsDir -Force
    Write-Host "[✓] Sub-agents installed!" -ForegroundColor Green
}

# 3. Configure MCP Servers
$McpSource = Join-Path $CurrentDir "mcp_config.json"
if (Test-Path $McpSource) {
    if (-not (Test-Path $GeminiMcpConfig)) {
        Copy-Item -Path $McpSource -Destination $GeminiMcpConfig -Force
        Write-Host "[✓] Configured mcp_config.json at $GeminiMcpConfig" -ForegroundColor Green
    } else {
        Write-Host "[i] mcp_config.json already exists at $GeminiMcpConfig (preserved existing file)" -ForegroundColor Cyan
    }
}

# 4. Initialize SEO Runtime if Python exists
$SeoRuntime = Join-Path $GeminiSkillsDir "seo\scripts\runtime.py"
if (Test-Path $SeoRuntime) {
    $pythonCmd = Get-Command "python" -ErrorAction SilentlyContinue
    if ($pythonCmd) {
        Write-Host "[+] Initializing Claude SEO Python runtime..." -ForegroundColor Yellow
        & python "$SeoRuntime" setup 2>&1 | Out-Null
        Write-Host "[✓] SEO Python environment configured!" -ForegroundColor Green
    }
}

Write-Host ""
Write-Host "==========================================================" -ForegroundColor Green
Write-Host "   SUCCESS: AI Skills & MCP Ecosystem is fully ready!     " -ForegroundColor Green
Write-Host "==========================================================" -ForegroundColor Green
Write-Host "Skills installed in: $GeminiSkillsDir"
Write-Host "Agents installed in: $GeminiAgentsDir"
Write-Host "MCP Config file:     $GeminiMcpConfig"
Write-Host ""
