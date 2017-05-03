class stacks::node {

  class { 'nodejs::global':
    version => '6'
  }
  nodejs::version { '7': }
  nodejs::version { '4': }
}
