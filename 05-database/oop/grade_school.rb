require 'pry'

class School 
   
    def initialize (name)
        @db = {} #@db can be a different name, up to us
    end

    def add (name,grade)
       #1. way :    @db[grade] =Array(@db[grade]).push(name) another way
       #2. way :    @db[grade] ||=[]
       #            @db[grade] << name
       #3.way :
        if @db[grade]
        @db[grade] << name 
        else
        @db [grade] = [name]
        end
    end

    def grade (grade)
        return @db[grade]
    end

    def db
        @db
    end

end



school = School.new("Haleakala Hippy School")
student = Student.new("James", 2)
