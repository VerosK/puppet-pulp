# Class pulp::repo
#
class pulp::repo (
  $repo_enabled = true
){
  if $repo_enabled == true {
    yumrepo {'rhel-pulp':
      name     => 'pulp-v2-stable',
      descr    => 'Pulp Community Releases',
      baseurl  => 'http://repos.fedorapeople.org/repos/pulp/pulp/v2/stable/$releasever/$basearch/',
      enabled  => '1',
      gpgcheck => '1',
      gpgkey   => 'https://repos.fedorapeople.org/repos/pulp/pulp/GPG-RPM-KEY-pulp-2',
    }
  }
}
