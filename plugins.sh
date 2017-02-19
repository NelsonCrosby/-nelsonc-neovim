#!/bin/bash

set -e

_plugins_update () {
  local plugins=($@)
  if [ "${#plugins}" -eq 0 ]; then
    plugins=($(ls repo))
  fi

  local failures=()
  for plugin in "${plugins[@]}"; do
    (
      local submodule="repo/$plugin"
      local branch="$(git config -f .gitmodules "submodule.$submodule.branch")"
      [ -z "$branch" ] && echo "=== No update path for $plugin ===" && exit 0

      echo "=== Updating $plugin ($branch) ==="
      git submodule update --remote "$submodule"
    ) || {
      failures+=("$plugin")
      echo '=== Update failed! ==='
    }
    echo; echo
  done

  echo 'Done!'

  for failed in "${failures[@]}"; do
    echo "  Failed on $failed"
  done

  [ "${#failures}" -eq 0 ]
}

cmd="$1"; shift
"_plugins_$cmd" "$@"
