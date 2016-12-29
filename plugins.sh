#!/bin/bash

set -e

_plugins_update () {
  local plugins=($@)
  if [ "${#plugins}" -eq 0 ]; then
    plugins=($(ls repo))
  fi

  local branch='master' failures=()
  for plugin in "${plugins[@]}"; do
    (
      echo "=== Updating $plugin ($branch) ==="
      cd "repo/$plugin"
      git checkout "$branch"
      git pull
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
