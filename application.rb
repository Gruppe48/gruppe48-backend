require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require File.join(File.dirname(__FILE__), 'environment')

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
  set :haml, :format => :html5
end

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

helpers do
  def prevMonth(id)
    @id = id-1
    if @id == 0 then @id = 12
    end
    return @id
  end
  def nextMonth(id)
    @id = id+1
    if @id == 13 then @id = 1
    end
    return @id
  end
end
get '/about' do
  haml :about
end
get '/contact' do
  haml :contact
end
post '/contact' do
  Pony.mail(:to => params[:email], :subject => 'Takk for at du kontakter oss!', :html_body => haml(:email, :layout => false))
  Pony.mail(:to => 'gruppe48@flexd.net', :subject => 'Kontakt', :html_body => params[:content])
  redirect '/contact'
end
# root page
get '/' do
  @sidebar = Article.all
  @articles = Article.paginate(:page => params[:page], :per_page => 1)
  @slider = true
  haml :index
end
