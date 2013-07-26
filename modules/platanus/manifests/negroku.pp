class negroku{
	ruby::gem { 'negroku for 2.0.0-p0':
		gem     => 'negroku',
		ruby    => '2.0.0-p0',
		version => '~> 1.1.4'
	}

	ruby::gem { 'negroku for 2.0.0-p195':
		gem     => 'negroku',
		ruby    => '2.0.0-p195',
		version => '~> 1.1.4'
	}

	ruby::gem { 'negroku for 1.9.3-p125':
		gem     => 'negroku',
		ruby    => '1.9.3-p125',
		version => '~> 1.1.4'
	}

	ruby::gem { 'negroku for 1.9.3-p392':
		gem     => 'negroku',
		ruby    => '1.9.3-p392',
		version => '~> 1.1.4'
	}
}
