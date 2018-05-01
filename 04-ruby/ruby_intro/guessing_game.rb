require "pry"


# loops -while loop
#while some_condition
#
#end

# how to get input from user

# puts "welcome to the guessing game"

# secret =13

# binding.pry

# puts "you win!"

# day = "tuesday"
puts "welcome to the guessing game"
print "Guess a number :"
secret = 12

counter = 5
guess = gets.chomp.to_i

loop do 
    print "guess a number: "
    guess = gets.chomp.to_i
    if guess == secret 
        break
    end
end

puts "you win!"

guess = gets.chomp.to_i

while guess != secret
    print "guess a number :"
    guess = gets.chomp.to_i
end

puts "you win"

# puts "welcome to the guessing game"
# puts "enter a number"
# input = gets.chomp.to_i


# counter = 5

# while counter > 0
#     puts "inside while loop"
#     counter = counter -1
# end

