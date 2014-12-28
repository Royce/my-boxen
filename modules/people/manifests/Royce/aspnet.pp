class people::royce::aspnet (
  $my_sourcedir = $people::royce::params::my_sourcedir
) {

  repository { "${my_sourcedir}/OmniSharpServer":
    source => 'nosami/OmniSharpServer',
  }

}