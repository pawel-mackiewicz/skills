#!/usr/bin/env bash
set -euo pipefail

if (( $# > 1 )); then
  printf 'Usage: %s [skills-directory]\n' "$0" >&2
  exit 1
fi

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd -P)"
skills_dir="${1:-${HOME}/.agents/skills}"
mkdir -p -- "$skills_dir"
skills_dir="$(cd -- "$skills_dir" && pwd -P)"

# Check every destination before adding links, so a conflict changes nothing.
for skill in "$repo_root"/skills/*; do
  [[ -f "$skill/SKILL.md" ]] || continue
  link="$skills_dir/${skill##*/}"
  if [[ -e "$link" || -L "$link" ]]; then
    if [[ -L "$link" && "$(readlink -- "$link")" == "$skill" ]]; then
      continue
    fi
    printf 'Cannot install: %s already exists. Move it aside first.\n' "$link" >&2
    exit 1
  fi
done

for skill in "$repo_root"/skills/*; do
  [[ -f "$skill/SKILL.md" ]] || continue
  link="$skills_dir/${skill##*/}"
  if [[ -L "$link" ]]; then
    printf 'Already linked: %s\n' "$link"
  else
    ln -s -- "$skill" "$link"
    printf 'Linked: %s\n' "$link"
  fi
done
