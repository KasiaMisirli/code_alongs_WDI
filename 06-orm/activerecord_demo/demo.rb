require 'active_record'
require 'pry'

# database settings

options = {
   adapter: 'postgresql',
   database: 'goodfoodhunting'
}

ActiveRecord::Base.establish_connection(options)

ActiveRecord::Base.logger = Logger.new(STDOUT) 
#will also show me sql with every request

# mapping class to table
#mapping dish class to dishes table

class Dish < ActiveRecord::Base #accesing dishes table but i put dish because i look for dish
  has_many :comments #has_many takes plural 
end
# looking for prular od dish and finds dishes
class Comment < ActiveRecord::Base
   belongs_to :dish #belongs_to takes singular
end

binding.pry

#Dish.all
#Dish.first
#Dish.count
#Dish.find(3) // take id
#Dish.find(3).name //name of the id 3
#Dish.find_by(name: 'pudding') //take attributes,gives one object
#Dish.where(name: 'pudding')  // take attributes, give a group
#Dish.where(name: 'pudding').first.name  //first found, its name
#new_dish = Dish.new
#new_dish.name = 'pie'
#new_dish.save  // will save into the database
# Dish.find(c1.dish_id).name

#c1 = Comment.first  //assign the variable name to comment and get the dish 
#c1.dish
# c1 ==> #<Comment:0x00007fe1c3cad940 id: 3, content: "great", dish_id: 1>
# Comment.last.dish_id

#d1 = Dish.first
#d1.comments
#Dish.all.to_sql //shows the way to write codein sql
#Dish.where(name: 'pudding').to_sql
