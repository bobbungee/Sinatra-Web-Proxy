require 'sinatra'
require 'haml'
require 'sass'
require 'open-uri'
require 'lib/mongler'

set :haml, :format=>:html5

get '/' do
  haml :index
end

get '/main.css' do
  sass :main
end

get '/proxy.css' do
  sass :proxy
end

get '/form/*' do
  "<base target='_top'>"+(haml :url_form)
end

post '/proxy' do
  haml :framed, :layout => :lay_frames
end

get '/proxy' do
  @site = mangle_page params[:url], '/proxy?url='
  haml :unframed, :layout => false
end

get '/get_page/*' do
  mangle_page(params[:splat][0], '/get_page/')
end

def mangle_page(url, prefix)
  doc = Mongler.new(url, prefix)
  doc.mangle('img', 'src')
  doc.mangle('link', 'href')
  doc.mangle('a', 'href', true)
  doc.mangle('form', 'action', true)
  doc.parse
end
