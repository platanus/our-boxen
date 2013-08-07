class people::blackjid::osx {

  osx::recovery_message { 'If this Mac is found, please call +569 77688023': }

  include osx::global::disable_key_press_and_hold
  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::global::key_repeat_delay
  include osx::global::key_repeat_rate

  include osx::dock::autohide
  include osx::dock::clear_dock
  include osx::dock::dim_hidden_apps

  include osx::finder::show_removable_media_on_desktop

  include osx::no_network_dsstores
}
