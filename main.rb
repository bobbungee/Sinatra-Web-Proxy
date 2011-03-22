require 'rubygems'
require 'sinatra'
require 'haml'
require 'open-uri'

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
  URI.parse(params[:splat][0] + request.query_string.gsub("|", "%7C")).read
end
