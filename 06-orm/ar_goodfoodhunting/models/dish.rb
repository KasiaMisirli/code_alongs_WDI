class Dish < ActiveRecord::Base
    validates :name, length: { in: 6..20 }
    validates :image_url, presence: true
    has_many :comments
    has_many :likes
end

#dish = Dish.new
#dish.errors //=> name cant be blank
# this error came up because we have the presence: true 
#validates :name, length {in: 6..20} wont save if the name is shorter then 6 characters