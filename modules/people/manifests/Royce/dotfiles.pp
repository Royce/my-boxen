class people::royce::repositories (
  $my_sourcedir = $people::royce::params::my_sourcedir,
  $my_homedir   = $people::royce::params::my_homedir
) {

  $dotfiles = "${my_sourcedir}/dotfiles"
  repository { $dotfiles:
    source => 'Royce/dotfiles',
  }

  define symlink_dotfile($file = $title, $homedir, $dotfiles) {
    file { "${homedir}/.${file}":
      ensure => link,
      mode   => '0644',
      target => "${dotfiles}/$file",
      require => Repository[$dotfiles],
    }
  }
  symlink_dotfile { ['bash_profile', 'bashrc', 'hushlogin', 'inputrc', 'vimrc']:
    homedir => $my_homedir,
    dotfiles => $dotfiles,
  }

  file { "${my_homedir}/.config/profile": ensure => directory }

  define symlink_profile_scripts($file = $title, $homedir, $dotfiles) {
    file { "${homedir}/.config/profile/${file}":
      ensure => link,
      mode   => '0644',
      target => "${dotfiles}/config-profile/$file",
      require => [
        Repository[$dotfiles],
        File["${homedir}/.config/profile"]
      ],
    }
  }
  $profile_scripts = [
    'bash_history.sh',
    'bash_prompt.sh',
    'cd_improvements.sh',
    'completion_ssh.sh',
    'kvm.sh'
  ]
  symlink_profile_scripts { $profile_scripts:
    homedir => $my_homedir,
    dotfiles => $dotfiles,
  }
}
