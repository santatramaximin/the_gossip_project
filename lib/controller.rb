require 'bundler'
Bundler.require
require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    #"<html><head><title>The Gossip Project</title></head><body><h1>Mon super site de gossip !</h1></body></html>"
    erb :index
  	end

  get '/gossips/new/' do
  	erb :new_gossip
  	end

  post '/gossips/new/' do
  	Gossip.new(params["gossip_author"],params["gossip_content"]).save
  	redirect '/'

	end


  run! if app_file == $0
end