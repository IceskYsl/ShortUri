# -*- coding: utf-8 -*-
require 'net/http'
require 'json'
class ShortUri
  VERSION = "0.0.1"
  attr :key  

  
  def initialize(key)
    @key = key
    # @long_uri = URI.encode(long_uri.gsub /^http:\/\/|https:\/\//,"")
  end
  
  
  #缩短地址
  def shorten(long_uri)
    response = Net::HTTP.post_form(URI("http://126.am/api!shorten.action"), {:key=>@key, :longUrl=> URI.decode(long_uri)})
    result = JSON.parse response.body
    puts result['status_txt']    
    "http://"+result["url"]
  end
  
  #
  def expand(short_uri)
    response = Net::HTTP.post_form(URI("http://126.am/api!expand.action"), {:key=>@key, :shortUrl=>URI.decode(short_uri)})
    result = JSON.parse response.body
    puts result['status_txt']
    result["url"]
  end
  
  
  
  #将长地址缩短成短地址
  def alias(long_uri,user_short)
    response = Net::HTTP.post_form(URI("http://126.am/api!alias.action"), {:key=>@key, :longUrl=>(URI.decode long_uri),:userShort=>user_short})
    result = JSON.parse response.body
    puts result['status_txt']
    "http://126.am/"+result["userShort"]
  end
  

end

