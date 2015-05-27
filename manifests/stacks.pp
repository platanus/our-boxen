class boxen::personal::stacks inherits boxen::personal {
  # If $stacks looks like ['foo', 'bar'], behaves like:
  # include stacks::foo
  # include stacks::bar
  $_stacks = $merge_hierarchy ? {
    true      => hiera_array("${name}",[]),
    default   => hiera("${name}",[]),
  }

  $stacks_classes = prefix($_stacks, 'stacks::')
  ensure_resource('class', $stacks_classes)

}
