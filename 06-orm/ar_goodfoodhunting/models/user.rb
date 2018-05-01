class User < ActiveRecord::Base
    has_secure_password #build in feature in the framework 
    #gives 2 methods
    #1 u.password
    #2. authenticate
    has_many :likes
end