#!/usr/bin/env bash
# Check which product-design skills are present under a skills root and print fallbacks.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SKILLS_ROOT="${SKILLS_ROOT:-$HOME/.agents/skills}"

shipped=(
  product-manager
  business-rule-design
  product-interaction-design
  product-requirements-review
)

optional=(
  grilling
  domain-modeling
  prototype
  create-prd
  opportunity-solution-tree
  identify-assumptions-new
  identify-assumptions-existing
  prioritization-frameworks
  prioritize-features
  user-stories
  job-stories
  wwas
  test-scenarios
  interview-script
  competitor-analysis
  define-problem-statement
  define-jtbd-canvas
  define-hypothesis
  engineering-design
)

fallback_for() {
  case "$1" in
    grilling) echo "product-manager/references/interview-methods.md" ;;
    interview-script) echo "draft script via interview-methods.md" ;;
    define-problem-statement) echo "product-manager/templates/problem-statement.md" ;;
    create-prd) echo "product-manager PRD templates" ;;
    business-rule-design) echo "product-manager/references/business-rule-methods.md" ;;
    product-interaction-design) echo "cover states in PRD / product-design-methods.md" ;;
    product-requirements-review) echo "product-manager/templates/requirements-review.md (self-review)" ;;
    prioritization-frameworks) echo "qualitative MoSCoW" ;;
    prioritize-features) echo "Must/Should/Later/Won't table" ;;
    engineering-design) echo "product-manager/references/engineering-handoff.md only" ;;
    *) echo "orchestrator standalone fallback (see standalone-operation.md)" ;;
  esac
}

has_skill() {
  local root="$1" name="$2"
  [[ -f "$root/$name/SKILL.md" ]]
}

echo "Skills root: $SKILLS_ROOT"
echo "Repo root:   $REPO_ROOT"
echo

echo "== Shipped with this repository =="
missing_shipped=()
for name in "${shipped[@]}"; do
  if has_skill "$SKILLS_ROOT" "$name"; then
    echo "  [x] $name — OK in skills root"
  elif has_skill "$REPO_ROOT" "$name"; then
    echo "  [ ] $name — IN REPO only (not installed to skills root)"
    missing_shipped+=("$name")
  else
    echo "  [ ] $name — MISSING"
    missing_shipped+=("$name")
  fi
done

echo
echo "== Optional third-party / companions on skills root =="
for name in "${optional[@]}"; do
  if has_skill "$SKILLS_ROOT" "$name"; then
    echo "  [x] $name"
  else
    echo "  [ ] $name — missing; fallback: $(fallback_for "$name")"
  fi
done

echo
if ((${#missing_shipped[@]})); then
  echo "WARN: shipped skills not installed to skills root:"
  for name in "${missing_shipped[@]}"; do
    echo "  - $name"
  done
  echo "Install with scripts/install-skills.sh (or copy/symlink folders into \$SKILLS_ROOT)."
  exit 1
fi

echo "All shipped skills are present under the skills root."
exit 0
