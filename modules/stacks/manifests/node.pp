class stacks::node {

  # Global versions
  $node_global = '0.10'

  # Node
  class { 'nodejs::global': version => $node_global }

  nodejs::module { "bower for ${node_global}":
    module  => 'bower',
    node_version => $node_global,
    ensure => '~1.3'
  }

  nodejs::module { "grunt-cli for ${node_global}":
    module  => 'grunt-cli',
    node_version => $node_global,
    ensure => '~0.1'
  }

  nodejs::module { "gulp for ${node_global}":
    module  => 'gulp',
    node_version => $node_global,
    ensure => '~3.8'
  }

  nodejs::plugin { 'nodenv-vars':
    ensure => 'master',
    source => 'OiNutter/nodenv-vars'
  }

}
