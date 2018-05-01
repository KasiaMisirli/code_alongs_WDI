# fish = {
#     name: 'nemo',
#     health: 10,
#     speed: 2
# }

require 'pry'
# below is a class, new data type
class Fish #starts with caps and camelccase

    attr_accessor :name  #replace getter and setter
    attr_reader :health # replace getter
    attr_writer :speed # replace setter

    def initialize (name)# when a fish is created, this method will autorun
        puts "new fish is born"
        # health = 10 #scope - local to this method, only when the method is running
        @health = 10 # instance variable
        @speed = 5
        @name = name
        @stomach = []
    end

    # def get_name #getter
    #     return @name
    # end
    # def name=(new_name) #setter
    #     @name = new_name
    # end
    #calling f1.name = "xxx"

    # def set_name(new_name) #setter
    #     @name = new_name
    # end

    def sleep
        @health = @health + 10
    end
end


class Plant
    def initialize
        @health = 5
    end 

end
puts "welcome to the underworld"

#f1 = Fish.new("dory")
#f1.set_name("lola")  will change name
