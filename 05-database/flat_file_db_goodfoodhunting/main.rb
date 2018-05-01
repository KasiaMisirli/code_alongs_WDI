     
require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @lines = IO.readlines('dishes.txt')
  erb :index
end

get '/dishes/new' do
  erb :new
end

post '/dishes' do #must use post here albouth post has side effects
  file = File.open('dishes.txt','a+') do |file|
    file.puts params[:name]
    file.close
  end
  redirect to('/')
end 


#a+ is the file type