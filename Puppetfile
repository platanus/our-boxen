# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod "puppet-#{name}", :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.11.0"

# Support for default hiera data in modules

github "module_data", "0.0.4", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "brewcask",   "0.0.6"
github "dnsmasq",    "2.0.1"
github "gcc",        "2.2.1"
github "git",        "2.7.9"
github "homebrew",   "1.13.0"
github "hub",        "1.4.1"
github "inifile",    "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.5"
github "stdlib",     "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "nodejs",     "5.0.0"
github "openssl",    "1.0.0"
github "pkgconfig",  "1.0.0"
github "repository", "2.4.1"
github "ruby",       "8.5.2"
github "stdlib",     "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.2.1"
github "go",         "2.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "osx",                   "2.7.0"
github "prezto",                "1.0.1", :repo => "archfear/puppet-prezto"
github "property_list_key",     "0.1.0"
github "sysctl",                "1.0.1"
github "zsh",                   "1.0.0"

# Services
github "docker",                "0.9.0"
github "elasticsearch",         "2.8.0"
github "mysql",                 "2.0.1"
github "postgresql",            "4.0.1"
github "pow",                   "2.3.1"
github "redis",                 "3.1.0"

# Application modules
github "sublime_text",          "1.0.1"
github "textual",               "4.2.0"
github "virtualbox",            "1.0.13"

# Android Stack
github "android",               "1.5.1"
github "java",                  "1.8.3"


