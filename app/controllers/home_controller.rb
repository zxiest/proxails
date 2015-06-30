require 'httparty'

class HomeController < ApplicationController
  def index
    #puts "get params: #{params} - url: #{params[:url]}"

    r = HTTParty.get(params[:url], :limit => 5)

    #response.body = r.body
    #response.header = r.header
    #puts "got header: #{r.header}"
    #puts "got body: #{r.body}"

    #puts "request was: #{request.inspect}"
    render :text => r.body
    #render :text => 'hello there'
    #URI::unescape()
  end
end
