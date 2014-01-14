# encoding: UTF-8
require 'rubygems'
require 'bundler'

begin
  Bundler.setup(:default, :development, :test)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts 'Run `bundle install` to install missing gems'
  exit e.status_code
end

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name        = 'moped-cleaner'
  gem.homepage    = 'http://github.com/bnorton/moped-cleaner'
  gem.license     = 'MIT'
  gem.summary     = 'Clean only models inserted when running tests with database interaction via moped'
  gem.description = 'Typically one performs a database truncate (remove object from all collections) between tests but moped-cleaner only removes objects from collections that were inserted into.'
  gem.email       = 'brian.nort@gmail.com'
  gem.authors     = %w(bnorton)
end

Jeweler::RubygemsDotOrgTasks.new
