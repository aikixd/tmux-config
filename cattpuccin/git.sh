show_git() {

  local cur_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
  local script="${cur_dir%/*}/git.sh"

  local index=$1
  local icon="$(get_tmux_option "@catppuccin_test_icon" "")"
  local color="$(get_tmux_option "@catppuccin_test_color" "$thm_blue")"
  local text=$(echo "#($script)")

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
