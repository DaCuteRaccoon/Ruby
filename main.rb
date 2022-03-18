#!/usr/bin/env ruby

require 'toml'
require 'colorize'
require 'rake'
require 'os'
require './ruby/functions'

def user
	TOML.load_file("user.toml")
  $userData = TOML.load_file("user.toml")
	puts $userData["user"]
end

def colorHelp(help)
	eval "puts String.#{help}"
	# puts "#{String}.#{help}"
end

def selenium(file = 'webdriver.rb')
	system "bundle exec ruby ./selenium/#{file}"
end

def specs
	# BEGIN Find out which OS user is using
	if OS.windows? == true
		# OS.doze?
		puts "OS".colorize(:red) + ": " + "Windows".colorize(:green)
	elsif OS.mac?
		# OS.osx
		# OS.x
		puts "OS".colorize(:red) + ": " + "Mac".colorize(:green)
	elsif OS.posix?
		puts "OS".colorize(:red) + ": " + "POSIX (Linux, Mac OS X, Cygwin)".colorize(:green)
	else
		puts "Couldn't detect OS"
	end
	# END Find out which OS user is using
	puts "Bits".colorize(:red) + ": " + "#{OS.bits}".colorize(:green)
	puts "JRuby".colorize(:red) + ": " + "#{OS.java?}".colorize(:green)
	puts "Ruby Location".colorize(:red) + ": " + "#{OS.ruby_bin}".colorize(:green)
	puts "NULL".colorize(:red) + ": " + "#{OS.dev_null}".colorize(:green)
	puts "RSS Bytes".colorize(:red) + ": " + "#{OS.rss_bytes}".colorize(:green)
	puts "CPU Cores".colorize(:red) + ": " + "#{OS.cpu_count}".colorize(:green)
	puts "Open File Command".colorize(:red) + ": " + "#{OS.open_file_command}".colorize(:green)
end

null = nil
NULL = NIL


# ======= MAIN CODE ======= #

clear
puts 'Hello, World!'
specs

#system "echo '#{OS.report}' > ./ruby/osreport.yaml"
# colorHelp 'colors'

# colorHelp 'color_samples'
# colorHelp 'modes'
#puts gets '.'
#login


=begin
$userData[:children].each do |child|
	puts child[:title]
	puts child[:url]
end
=end

# $userData["user"]
# puts $userData.map { |key, value| value }
# puts $userData.collect { |k, v| v }
