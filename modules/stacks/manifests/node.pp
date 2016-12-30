class stacks::node {

  class { 'nodejs::global':
    version => '6'
  }
  nodejs::version { '4': }
  nodejs::version { '0.10': }
  nodejs::version { '0.12': }

  # Node
  npm_module { 'npm for all nodes':
    module        => 'npm',
    node_version  => '*',
    version       => '~> 3.8.6'
  }
}
