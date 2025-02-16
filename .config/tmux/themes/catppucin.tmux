set -g @plugin 'catppuccin/tmux'
set -g @catppuccin_flavour 'mocha' # latte,frappe, macchiato or mocha

set -g @catppuccin_window_status_icon_enable "yes"
set -g @catppuccin_icon_window_last "󰖰"
set -g @catppuccin_icon_window_current "󰖯"
set -g @catppuccin_icon_window_zoom "󰁌"
set -g @catppuccin_icon_window_mark "󰃀"
set -g @catppuccin_icon_window_silent "󰂛"
set -g @catppuccin_icon_window_activity "󱅫"
set -g @catppuccin_icon_window_bell "󰂞"

set -g @catppuccin_pane_status_enabled "no"
set -g @catppuccin_pane_border_status "off" # See `pane-border-status`
set -g @catppuccin_pane_left_separator "█"
set -g @catppuccin_pane_right_separator "█"
set -g @catppuccin_pane_middle_separator "█"
set -g @catppuccin_pane_number_position "left"
set -g @catppuccin_pane_default_fill "number"
set -g @catppuccin_pane_default_text "#{b:pane_current_path}"
set -g @catppuccin_pane_border_style "fg=#{thm_orange}"
set -g @catppuccin_pane_active_border_style "fg=#{thm_orange}"
set -g @catppuccin_pane_color "#{thm_orange}"
set -g @catppuccin_pane_background_color "#{thm_orange}"

# round shape
set -g @catppuccin_window_left_separator ""
set -g @catppuccin_window_middle_separator "█"
set -g @catppuccin_window_right_separator " "

set -g @catppuccin_window_number_position "left"


# set -g @catppuccin_window_default_fill "number"
# set -g @catppuccin_window_current_fill "number"
# set -g @catppuccin_window_current_text "#{pane_current_path}"

set -g @catppuccin_status_default "on"
set -g @catppuccin_status_background "default"
set -g @plugin 'tmux-plugins/tmux-cpu'

set -g @catppuccin_status_modules_right "cpu date_time"
set -g @catppuccin_status_left_separator  ""
set -g @catppuccin_status_right_separator " "
set -g @catppuccin_status_fill "all"
set -g @catppuccin_status_connect_separator "yes"


