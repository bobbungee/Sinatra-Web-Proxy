require 'sinatra'
require 'haml'
require 'open-uri'
require 'nokogiri'

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
  url = "http://#{url}" if !is_url?(url)
  parsed_url = URI.parse(url)
  doc = Nokogiri(open(url, "User-Agent" => "Ruby/#{RUBY_VERSION}"))
  doc = mangle('img', 'src', parsed_url.host, doc)
  doc = mangle('link', 'href', parsed_url.host, doc)
  doc = mangle('a', 'href', parsed_url.host, doc)
  doc = mangle('form', 'action', parsed_url.host, doc)
  doc.to_html
end

def is_url?(url)
  !(URI.parse(url).scheme.nil?)
end

def mangle(tag, attribute, prefix, doc)
  doc.css(tag).each do |e|
    e[attribute] = "http://#{prefix}/#{e[attribute]}" if !is_url?(e[attribute])
  end
  doc
end
