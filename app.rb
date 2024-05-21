# app.rb
require 'sinatra'

get '/hello' do
  "Hello, #{params['name'] || 'World'}!"
end
