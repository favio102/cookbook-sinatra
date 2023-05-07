require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"

get "/" do
  "Hello Universe!"
end
