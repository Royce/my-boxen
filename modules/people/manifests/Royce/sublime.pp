class people::royce::sublime{

  include sublime_text

  sublime_text::package { 'Emmet':
    source => 'sergeche/emmet-sublime'
  }

  sublime_text::package { 'Git gutter':
    source  => 'jisaacks/GitGutter'
  }

  sublime_text::package { 'Lint':
    source  => 'SublimeLinter/SublimeLinter'
  }

}