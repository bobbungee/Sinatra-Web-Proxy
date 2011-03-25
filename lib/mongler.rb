require 'nokogiri'

class Mongler
  def initialize(url,prefix=nil)
    url = "http://#{url}" if !self.is_url?(url)
    @url = URI.parse(url)
    @prefix = prefix
    @doc = Nokogiri(open(url, "User-Agent" => "Mongler Ruby/#{RUBY_VERSION}"))
  end

  def is_url?(url=nil)
    url.nil? ? !@url.scheme.nil? : !(URI.parse(url).scheme.nil?)
  end

  def mangle(tag, attribute, prefix = false)
    @doc.css(tag).each{|e| e[attribute] = "#{@prefix if prefix}http://#{@url.host}/#{e[attribute]}" if !self.is_url?(e[attribute])}
  end

  def parse
    @doc.to_s
  end
end
