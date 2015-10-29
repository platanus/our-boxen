class people::bunzli {
  npm_module { 'jshint for all nodes':
    module        => 'jshint',
    node_version  => '*',
    version       => '~> 2.8.0'
  }
}
