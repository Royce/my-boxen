class people::royce::repositories (
  $my_sourcedir = $people::royce::params::my_sourcedir,
  $my_homedir   = $people::royce::params::my_homedir,
  $my_username  = $people::royce::params::my_username
) {

  ###############################
  # Git config and repositories #
  ###############################

  git::config::global{ 'user.name':
    value => 'Royce Townsend',
  }

  git::config::global{ 'user.email':
    value => 'git@roycetownsend.com',
  }

  git::config::global { 'alias.rc':
    value => 'rebase --continue',
  }

  git::config::global{ 'color.ui':
    value => 'auto',
  }

  repository { "${my_sourcedir}/quick":
    source => 'Royce/quick',
  }

  file { "${boxen::config::bindir}/quick":
    ensure  => link,
    target  => "${my_sourcedir}/quick/bin/quick",
    mode    => '0755',
    require => Repository["${my_sourcedir}/quick"],
  }

  repository { "${my_sourcedir}/roycetownsend.com":
    source => 'Royce/roycetownsend.com',
  }

  ## TODO .dotfile
  # file { "/Users/${my_username}/.vimrc":
  #   ensure => link,
  #   mode   => '0644',
  #   target => "${my_sourcedir}/dotfiles/vimrc",
  #   require => Repository["${my_sourcedir}/dotfiles"],
  # }
}