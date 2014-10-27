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
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen",      "3.7.0"

# Support for default hiera data in modules

github "module_data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",    "2.0.0"
github "gcc",        "2.2.0"
github "git",        "2.6.0"
github "homebrew",   "1.9.5"
github "hub",        "1.3.0"
github "inifile",    "1.1.1", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.4"
mod 'platnaus-nodejs',
  :git => "git://github.com/platanus/puppet-nodejs.git",
  :ref => "OiNutter"
github "openssl",    "1.0.0"
github "pkgconfig",  "1.0.0"
github "repository", "2.3.0"
github "ruby",       "8.1.4"
github "stdlib",     "4.2.1", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.2.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred",                "1.1.8"
github "chrome",                "1.2.0"
github "firefox",               "1.1.9"
github "sublime_text_2",        "1.1.2"
github "sublime_text_3",        "1.0.3", :repo => "jozefizso/puppet-sublime_text_3"
github "osx",                   "2.7.0"
github "property_list_key",     "0.1.0"
github "zsh",                   "1.0.0"
github "dropbox",               "1.3.0"
github "iterm2",                "1.2.2"
github "skype",                 "1.0.8"
github "toggl",                 "1.0.5"
github "googledrive",           "1.0.2"
github "textual",               "4.2.0"
github "skydrive",              "1.0.1"
github "sequel_pro",            "1.0.1"
github "mysql",                 "1.3.1", :repo => "platanus/puppet-mysql"
github "mongodb",               "2.6.1"
github "vlc",                   "1.1.0"
github "heroku",                "2.1.1"
github "virtualbox",            "1.0.12"
github "vagrant",               "3.0.8"
github "eclipse",               "2.3.0"
github "android",               "1.3.0"
github "better_touch_tools",    "1.0.0"
github "tmux",                  "1.0.2"
github "java",                  "1.6.1"
github "imagemagick",           "1.3.0"
github "spectacle",             "1.0.0"
github "phantomjs",             "2.3.0"
github "shortcat",              "1.0.6"
github "clipmenu",              "1.0.0"
github "hipchat",               "1.1.3"
mod 'platnaus-pow',
  :git => "git://github.com/platanus/puppet-pow.git",
  :ref => "pow-0.5.0"
github "spotify",               "1.0.1"
github "prezto",                "1.0.1", :repo => "archfear/puppet-prezto"
github "pgadmin3",              "1.0.0"
github "redis",                 "3.1.0"

## PHP module
github "php",                   "1.2.1"
github "autoconf",              "1.0.0"
github "wget",                  "1.0.1"
github "libtool",               "1.0.0"
github "pkgconfig",             "1.0.0"
github "pcre",                  "1.0.0"
github "libpng",                "1.0.0"
github "caffeine",              "1.0.0"
github "mumble",                "1.0.5"

## postgresql
github "sysctl",                "1.0.1"
github "postgresql",            "3.0.1"

#wkhtmltopdf
github "wkhtmltopdf",           "1.2.1"
