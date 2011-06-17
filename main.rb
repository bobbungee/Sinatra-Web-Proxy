require 'rubygems'
require 'sinatra'
require 'haml'
require 'sass'
require 'open-uri'
require 'nokogiri'
require './lib/mongler'

set :haml, :format=>:html5

get '/' do
  haml :index
end

# Stylesheets
get('/main.css'){sass :main}
get('/proxy.css'){sass :proxy}

get '/proxy' do
  @site = mangle_page params[:url], '/proxy?url='
  haml :proxy, :layout => false
end

def mangle_page(url, prefix)
  doc = Mongler.new(url, prefix)
  doc.mangle('img', 'src')
  doc.mangle('link', 'href')
  doc.mangle('a', 'href', true)
  doc.mangle('form', 'action', true)
  doc.parse
end
