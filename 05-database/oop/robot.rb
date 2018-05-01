
class Factory
    def initialize
        @cars = []
    end 
    # def build_car
    #     @cars.push(Car.new)
    # end
    def add_car(car)
        @cars.push(car)
    end
end

# f1 = Factory.new
# c1 = Car.new
# f1.add_car(c1)

class Robot
    @@robot_class = 0 #class variable

    def initialize
       @@robot_class += 1
       @name = "#{prefix}#{suffix}"
    end

    def name #instance methods
        @name
    end

    def prefix
        ("aa".."zz").to_a.sample #turn into array and take a sample out
    end

    def suffix
        ("000".."999").to_a.sample # number between 000 and 999 to array and samples from array
    end

    def reset #instance method

    end
    def self.info # class method

    end

end

# each new robot is a new instance of the robot class, has name aka instance variable

r1 = Robot.new
r1.name

Robot.info