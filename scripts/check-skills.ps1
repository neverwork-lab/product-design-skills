<#
.SYNOPSIS
  Check which product-design skills are present under a skills root and print fallbacks.
#>
param(
  [string]$SkillsRoot = $(if ($env:SKILLS_ROOT) { $env:SKILLS_ROOT } else { Join-Path $HOME ".agents\skills" })
)

$ErrorActionPreference = "Stop"
$RepoRoot = Split-Path -Parent $PSScriptRoot

$Shipped = @(
  "product-manager",
  "business-rule-design",
  "product-interaction-design",
  "product-requirements-review"
)

$OptionalThirdParty = @(
  "grilling",
  "domain-modeling",
  "prototype",
  "create-prd",
  "opportunity-solution-tree",
  "identify-assumptions-new",
  "identify-assumptions-existing",
  "prioritization-frameworks",
  "prioritize-features",
  "user-stories",
  "job-stories",
  "wwas",
  "test-scenarios",
  "interview-script",
  "competitor-analysis",
  "define-problem-statement",
  "define-jtbd-canvas",
  "define-hypothesis",
  "engineering-design"
)

$Fallbacks = @{
  "grilling"                      = "product-manager/references/interview-methods.md"
  "interview-script"              = "draft script via interview-methods.md"
  "define-problem-statement"      = "product-manager/templates/problem-statement.md"
  "create-prd"                    = "product-manager templates (lightweight/full PRD)"
  "business-rule-design"          = "product-manager/references/business-rule-methods.md"
  "product-interaction-design"    = "cover states in PRD / product-design-methods.md"
  "product-requirements-review"   = "product-manager/templates/requirements-review.md (self-review)"
  "prioritization-frameworks"     = "qualitative MoSCoW"
  "prioritize-features"           = "Must/Should/Later/Won't table"
  "engineering-design"            = "product-manager/references/engineering-handoff.md only"
}

function Test-Skill([string]$Root, [string]$Name) {
  return Test-Path (Join-Path (Join-Path $Root $Name) "SKILL.md")
}

Write-Host "Skills root: $SkillsRoot"
Write-Host "Repo root:   $RepoRoot"
Write-Host ""

Write-Host "== Shipped with this repository =="
$missingShipped = @()
foreach ($name in $Shipped) {
  $inRepo = Test-Skill $RepoRoot $name
  $inRoot = Test-Skill $SkillsRoot $name
  $status = if ($inRoot) { "OK in skills root" } elseif ($inRepo) { "IN REPO only (not installed to skills root)" } else { "MISSING" }
  if (-not $inRoot) { $missingShipped += $name }
  Write-Host ("  [{0}] {1}" -f ($(if ($inRoot) { "x" } else { " " })), "$name — $status")
}

Write-Host ""
Write-Host "== Optional third-party / companions on skills root =="
foreach ($name in $OptionalThirdParty) {
  $inRoot = Test-Skill $SkillsRoot $name
  if ($inRoot) {
    Write-Host ("  [x] {0}" -f $name)
  } else {
    $fb = $Fallbacks[$name]
    if (-not $fb) { $fb = "orchestrator standalone fallback (see standalone-operation.md)" }
    Write-Host ("  [ ] {0} — missing; fallback: {1}" -f $name, $fb)
  }
}

Write-Host ""
if ($missingShipped.Count -gt 0) {
  Write-Host "WARN: shipped skills not installed to skills root:"
  $missingShipped | ForEach-Object { Write-Host "  - $_" }
  Write-Host "Install with scripts/install-skills.ps1 (or copy/symlink folders into `$SkillsRoot)."
  exit 1
}

Write-Host "All shipped skills are present under the skills root."
exit 0
