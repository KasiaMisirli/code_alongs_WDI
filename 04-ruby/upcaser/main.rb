require 'sinatra'
require 'sinatra/reloader' #changes in main.rb does not require a restart of the server
require 'pry'

$emails = ["cake@pudding.com","data@ga.com"] #global variable,works as long as the server is running

get '/'do
   erb :home
end

get '/admin' do
    @emails = $emails
    erb :admin
end

get '/process' do
    binding.pry
    $emails.push(params[:email])
end