class people::royce::nodejs {
  class { 'nodejs::global': version => 'v0.10.31' }

  # install some npm modules
  # Yeoman tools
  nodejs::module { 'yo': node_version => 'v0.10' }
    nodejs::module { 'generator-knockout': node_version => 'v0.10' }
    nodejs::module { 'generator-angular': node_version => 'v0.10' }
    nodejs::module { 'generator-aspnet': node_version => 'v0.10' }
    nodejs::module { 'generator-nancy': node_version => 'v0.10' }
  nodejs::module { 'bower': node_version => 'v0.10' }
  nodejs::module { 'grunt-cli': node_version => 'v0.10' }
 }