cp=$(tmux display -p "#{pane_current_path}")

if (cd $cp && git rev-parse --is-inside-work-tree > /dev/null 2>&1); then
  git_branch=$(cd $cp && git branch --show-current)
else
  git_branch="N/A"
fi

echo "$git_branch"
return 0
