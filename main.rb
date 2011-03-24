require 'sinatra'
require 'haml'
require 'open-uri'
require 'lib/mongler'

set :haml, :format=>:html5

get '/' do
  haml :url_form
end

get '/form/*' do
  "<base target='_top'>"+(haml :url_form)
end

post '/proxy' do
  @url = params[:url]
  haml :framed, :layout => :lay_frames
end

get '/get_page/*' do
  url = params[:splat][0]
  doc = Mongler.new(url,'/get_page/') # Erk hardcoded urls. Need to change this sometime...
  doc.mangle('img', 'src')
  doc.mangle('link', 'href')
  doc.mangle('a', 'href', true)
  doc.mangle('form', 'action', true)
  doc.parse
end
