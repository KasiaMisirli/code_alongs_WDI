class Comment < ActiveRecord::Base
    belongs_to :dish
    belongs_to :user
end

#Dish.first.comments
#Dish.last.comments