require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
set :bind, "0.0.0.0"

get "/" do
  erb :index
end

get "/about" do
  erb :about
end

get "/team/:username" do
  puts params[:username]
  "The username is #{params[:username]}"
end

get "/team/:username" do
  binding.pry  # <= code will stop here for HTTP request localhost:4567/team/someone
  # [...]
end

get "/" do
  @usernames = ["ssaunier", "Papillard"]
  erb :index
end
