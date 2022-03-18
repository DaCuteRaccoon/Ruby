#!/usr/bin/env ruby

require 'selenium-webdriver'
#require 'webdrivers'

url = 'https://google.com/'

options = Selenium::WebDriver::Options.chrome
driver = Selenium::WebDriver.for :chrome, options: options
driver.title # => 'Google'
driver.manage.timeouts.implicit_wait = 500

driver.get url

driver.quit
