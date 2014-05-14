class people::royce::sublime_packages{

  sublime_text_2::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  sublime_text_2::package { 'Git gutter':
    source  => 'jisaacks/GitGutter'
  }

  sublime_text_2::package { 'Git':
    source => 'kemayo/sublime-text-2-git'
  }

  sublime_text_2::package { 'Lint':
    source  => 'SublimeLinter/SublimeLinter'
  }

}