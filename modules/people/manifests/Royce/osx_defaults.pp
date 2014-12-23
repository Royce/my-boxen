class people::royce::osx_defaults {

  # Relay fast key repeat after 10 ms
  include osx::global::disable_key_press_and_hold
  include osx::global::key_repeat_rate
  class { 'osx::global::key_repeat_delay':
    delay => 10
  }

  include osx::global::enable_keyboard_control_access
  include osx::global::expand_print_dialog
  include osx::global::expand_save_dialog
  include osx::finder::show_all_on_desktop
  include osx::finder::unhide_library

  include osx::disable_app_quarantine
  
  include osx::no_network_dsstores

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