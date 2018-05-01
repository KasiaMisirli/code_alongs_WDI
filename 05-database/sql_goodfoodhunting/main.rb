require 'pry'     
require 'sinatra'
require 'sinatra/reloader'
require 'pg'

def run_query(sql)
  conn = PG.connect(dbname: 'goodfoodhunting')
  result = conn.exec(sql)
  conn.close
  return result
end

get '/' do
  sql = 'SELECT * FROM dishes ORDER by id;'
  @dishes = run_query(sql)
  erb :index #use index file
end

get '/dishes/new' do #dish form
  erb :new
end

post '/dishes' do # posting
 
  params["name"]
  # get the input from the form
  #params #{name:'name','image_url'}

  # save it in the database 
  sql = "INSERT INTO dishes (name,image_url) VALUES ('#{params[:name]}','#{params[:image_url]}');"
  # insert into dishes(name,image_url) calues('cake','www')
  run_query(sql)
  redirect to ('/')

end 

get '/dishes/:id' do
  sql = "SELECT * FROM dishes WHERE id = #{params[:id]};"
  #conn = PG.connect(dbname: 'goodfoodhunting')
  results = run_query(sql)
  @dish = results.first
  erb :show
end
#must take the link of the dish and open it in the show window
  
delete '/dishes' do
   sql = "DELETE FROM dishes WHERE id = #{params[:id]};"
   run_query(sql)
   redirect to ('/')
end


get '/dishes/:id/edit' do
  # grab it from the datatbase using the id from the path
    result = run_query("SELECT * FROM dishes WHERE id = #{params[:id]};")
    @dish = result.first
    erb :edit
end

put '/dishes/:id' do
  sql = "UPDATE dishes SET name = '#{params[:name]}', image_url = '#{params[:image_url]}' WHERE id = #{params[:id]};"
  run_query(sql)
  redirect to ("/dishes/#{params[:id]}") #redirect to single dis details page
end