require 'rubygems'
require 'bundler/setup'

require File.join(File.dirname(__FILE__), 'environment')

articles = Article.paginate(:page => 1, :per_page => 3)
articles.each { |a| a.title }

p articles.total_pages
p articles.current_page