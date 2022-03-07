#!/usr/bin/env ruby

require 'toml'
require 'colorize'


def clear
  Gem.win_platform? ? (system "cls") : (system "clear")
end

def user
	TOML.load_file("user.toml")
  userData = TOML.load_file("user.toml")
  puts userData
end

def colorHelp(help)
	eval "puts String.#{help}"
end

puts 'Hello, world!'
