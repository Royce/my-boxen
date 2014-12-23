class people::royce::osx_defaults {

  #
  # Typing
  #
  include osx::global::disable_key_press_and_hold
  include osx::global::key_repeat_rate
  include osx::global::key_repeat_delay
  include osx::global::enable_keyboard_control_access
  include osx::keyboard::capslock_to_control
  include osx::global::enable_standard_function_keys

  #
  # Files
  #
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library
  include osx::disable_app_quarantine
  include osx::no_network_dsstores

  # Misc
  include osx::safari::enable_developer_mode

  #
  # Screenshots
  #
  boxen::osx_defaults { 'Save screenshots to dropbox':
    ensure => present,
    domain => 'com.apple.screencapture',
    key    => 'location',
    type   => 'string',
    value  => '/Users/${::luser}/Dropbox/Screenshots',
    user   => $::boxen_user;
  }
  boxen::osx_defaults { 'Save screenshots in PNG format':
    ensure => present,
    domain => 'com.apple.screencapture',
    key    => 'type',
    type   => 'string',
    value  => 'png',
    user   => $::boxen_user;
  }
  boxen::osx_defaults { 'Save screenshots without shadow':
    ensure => present,
    domain => 'com.apple.screencapture',
    key    => 'disable-shadow',
    value  => true,
    user   => $::boxen_user;
  }
}