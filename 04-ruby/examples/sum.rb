require "fileutils"
require 'pry'



# $ ruby sum.rb 2 3


# FileUtils.touch(ARGV[0])

#puts ARGV[0].to_i + ARGV[1].to_i
sum = 0

ARGV.each do |number|
    sum = sum + number.to_i
end
binding.pry
puts sum
#_______________another way
# index = 0
# while index < ARGV.length
#     puts ARGV[index]
#     total += ARGV[index].to_i
#     index += 1
# end
