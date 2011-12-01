require 'rubygems'
require 'bundler/setup'
require 'dm-core'
require 'dm-timestamps'
require 'dm-validations'
require 'dm-aggregates'
require 'dm-migrations'
require 'haml'
require 'ostruct'
require 'will_paginate'
require 'will_paginate/data_mapper'
require 'pony'
require 'sinatra' unless defined?(Sinatra)

configure do
  SiteConfig = OpenStruct.new(
                 :title => 'Nyhetsbildet 2011',
                 :author => 'Gruppe 48',
                 :url_base => 'http://nyheter.flexd.net'
               )

  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")
  Dir.glob("#{File.dirname(__FILE__)}/lib/*.rb") { |lib| require File.basename(lib, '.*') }

  DataMapper.setup(:default, (ENV["DATABASE_URL"] || "sqlite3:///#{File.expand_path(File.dirname(__FILE__))}/#{Sinatra::Base.environment}.db"))
  # Pony (EPOST)

  Pony.options = { :from => 'nyhetsbildet@gmail.com',  :via => :smtp, :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'nyhetsbildet@gmail.com',
    :password             => 'gruppe48',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "gmail.com" # the HELO domain provided by the client to the server
    }
  }
end
