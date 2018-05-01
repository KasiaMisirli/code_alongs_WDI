require 'sinatra'
require 'sinatra/reloader' #changes in main.rb does not require a restart of the server
require 'pry'


get "/chips" do
    return "hot chips"+" with gravy"
end


# get "/chips" do
#     orders = ["burgers","chips"]
#     return Time.now.to_a
# end

get "/" do
    return "welcome to home page"
end
#url - localhost:4567/hello?name=codebusters
#starting from the ? is called query string

get "/hello" do
    #params is a magic global hash
    #binding.pry
    return "Hi #{params["name"]} how are you?"
end

#---
get "/lucky_number" do
    "here is your lucky number : #{ rand(1..20)} "
end

get '/multiply' do
    result = params [:num1].to_f * params[:num2].to_f
    "the result is #{result}]}"

end

get '/about' do
    @name = 'codebusters'
    erb(:some_page)

    
end