require 'pry'     
require 'sinatra'
require 'sinatra/json'
require 'sinatra/reloader' #only reloads main.rb
require 'sinatra/cross_origin' #to allow acces to this api
require 'pg'
require_relative 'db_config'
require_relative 'models/dish'
require_relative 'models/comment'
require_relative 'models/user'
require_relative 'models/like'
require "BCrypt"

enable :sessions
enable :cross_origin #to allow acces to this api

before do #to allow acces to this api
  response.headers['Access-Control-Allow-Origin'] = '*'
end

helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
     if current_user
      return true
     else
      return false
  end
end
end

# def run_query(sql)
#   conn = PG.connect(dbname: 'goodfoodhunting')
#   result = conn.exec(sql)
#   conn.close
#   return result
# end

get '/' do
  # sql = 'SELECT * FROM dishes ORDER by id;'
  @dishes = Dish.all
  #json @dishes # getting the json verson of the data that appears on the website
  erb :index #use index file
end

get '/api/dishes' do
  @dishes = Dish.all
  json @dishes
end

get '/dishes/new' do #dish form
  erb :new
end

post '/dishes' do # posting
 
  # params["name"]
  # # get the input from the form
  # #params #{name:'name','image_url'}

  # # save it in the database 
  # sql = "INSERT INTO dishes (name,image_url) VALUES ('#{params[:name]}','#{params[:image_url]}');"
  # insert into dishes(name,image_url) calues('cake','www')
  dish = Dish.new
  @dish.name = params[:name]
  @dish.image_url = params[:image_url]
  redirect to ('/')
  # run_query(sql)

end 

get '/dishes/:id' do
  # sql = "SELECT * FROM dishes WHERE id = #{params[:id]};"
  #conn = PG.connect(dbname: 'goodfoodhunting')
  # results = run_query(sql)
  @dish = Dish.find(params[:id])
  @comments = @dish.comments
  erb :show
end
#must take the link of the dish and open it in the show window
  
delete '/dishes' do
  #  sql = "DELETE FROM dishes WHERE id = #{params[:id]};"
  @dish = Dish.find(params[:id])
  @dish.delete(params[:id])
  #  run_query(sql)
   redirect to ('/')
end


get '/dishes/:id/edit' do
  # grab it from the datatbase using the id from the path
    # result = run_query("SELECT * FROM dishes WHERE id = #{params[:id]};")
    @dish = Dish.find(params[:id])
    erb :edit
end

put '/dishes/:id' do
  # sql = "UPDATE dishes SET name = '#{params[:name]}', image_url = '#{params[:image_url]}' WHERE id = #{params[:id]};"
  # run_query(sql)
  @dish = Dish.find(params[:id])#finding existing
  @dish.name = params[:name]
  @dish.image_url = params[:image_url]
  @dish.save
  redirect to ("/dishes/#{params[:id]}") #redirect to single dis details page
end
#----------new code for comments
post '/comments' do
  # sql = "INSERT INTO comments (content,dish_id) VALUES ('#{params[:content]}','#{params[:dish_id]}');"
  # run_query(sql)
  comment = Comment.new
  comment.content = params[:content]
  comment.dish_id = params[:dish_id]
  comment.user_id = current_user.id
  comment.save
  redirect to("/dishes/#{params[:dish_id]}")
  #dont need to put @ in front of the dish is
  # the variable is not taking to a page that has at
end
#-----------------login
get '/login' do
  erb :login
end

post '/session' do
  #check email
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id # single source of truth
    #using only one (id) to prevent the data going stale
    redirect to ('/')
  else
    erb :login
end
end

delete '/session' do
  session[:user_id] = nil
  redirect to('/login')
end 

post '/api/likes' do
  like = Like.new
  like.user_id = current_user.id
  like.dish_id = params[:dish_id]
  like.save
  # json likes_count: like.dish.likes.count
  json likes_count: Dish.find(params[:dish_id]).likes.count
end

post '/likes' do
  redirect to ('/login') unless logged_in? 
  like = Like.new
  like.user_id = current_user.id
  like.dish_id = params[:dish_id]
  if like.save
    redirect to ("/dishes/#{params[:dish_id]}")
  end
 end

 options "*" do #to allow acces to this api
  response.headers["Allow"] = "GET, POST, OPTIONS"
  response.headers["Access-Control-Allow-Headers"] = "Authorization, Content-Type, Accept, X-User-Email, X-Auth-Token"
  response.headers["Access-Control-Allow-Origin"] = "*"
  200
end