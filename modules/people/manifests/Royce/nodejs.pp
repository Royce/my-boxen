class people::royce::nodejs {
  class { 'nodejs::global': version => 'v0.10.0' }

  # install some npm modules
  # Yeoman tools
  nodejs::module { 'yo': node_version => 'v0.10.0' }
    nodejs::module { 'generator-knockout': node_version => 'v0.10.0' }
  # nodejs::module { 'grunt-cli': node_version => 'v0.10.0' }
  # nodejs::module { 'bower': node_version => 'v0.10.0' }
  # nodejs::module { 'mocha': node_version => 'v0.10.0' }
  
  nodejs::module { 'docpad@6.54': node_version => 'v0.10.0' }
}