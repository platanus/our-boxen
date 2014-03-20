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

github "boxen",      "3.3.8"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.1"
github "gcc",        "2.0.1"
github "git",        "1.3.7"
github "homebrew",   "1.6.0"
github "hub",        "1.3.0"
github "inifile",    "1.0.1", :repo => "puppetlabs/puppetlabs-inifile"
github "module-data","0.0.1", :repo => "ripienaar/puppet-module-data"
github "nginx",      "1.4.3"
github "nodejs",     "3.5.0"
github "openssl",    "1.0.0"
github "repository", "2.3.0"
github "ruby",       "7.1.6"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "alfred",                "1.1.7"
github "chrome",                "1.1.2"
github "firefox",               "1.1.5"
github "sublime_text_2",        "1.1.2"
github "sublime_text_3",        "1.0.2", :repo => "jozefizso/puppet-sublime_text_3"
github "osx",                   "2.2.0"
github "property_list_key",     "0.1.0"
github "zsh",                   "1.0.0"
github "dropbox",               "1.2.0"
github "iterm2",                "1.0.6"
github "skype",                 "1.0.7"
github "toggl",                 "1.0.4"
github "googledrive",           "1.0.2"
github "textual",               "3.2.3"
github "skydrive",              "1.0.1"
github "sequel_pro",            "1.0.1"
github "mysql",                 "1.2.0"
github "mongodb",               "1.2.0"
github "vlc",                   "1.0.5"
github "screenhero",            "1.0.1"
github "heroku",                "2.1.1"
github "virtualbox",            "1.0.9"
github "vagrant",               "3.0.6"
github "eclipse",               "2.2.0"
github "android",               "1.1.0"
github "better_touch_tools",    "1.0.0"
github "tmux",                  "1.0.2"
github "java",                  "1.1.2"
github "imagemagick",           "1.2.1"
github "spectacle",             "1.0.0"
github "phantomjs",             "2.1.0"
github "shortcat",              "1.0.6"
github "clipmenu",              "1.0.0"
github "hipchat",               "1.1.0"
github "pow",                   "2.0.0"
github "wunderlist",            "1.0.0"
github "spotify",               "1.0.1"

## PHP module
github "php",                   "1.1.4"
github "wget",                  "1.0.0"
github "libtool",               "1.0.0"
github "pkgconfig",             "1.0.0"
github "pcre",                  "1.0.0"
github "libpng",                "1.0.0"
github "caffeine",              "1.0.0"
github "mumble",                "1.0.5"

## postgresql
github "sysctl",                "1.0.0"
github "postgresql",            "3.0.1"

#wkhtmltopdf
github "wkhtmltopdf",           "1.2.1"
