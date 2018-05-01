# racecar

# if 'racecar' == 'racecar'.reverse
#     puts 'its a palindrome'
# end

def palindrome(str)
    str == str.reverse
end

# if palindrome('racecar') == true
#     puts 'its good'
# else 


    def test(expected,actual)
        if expected == actual
            puts 'yay'
        else
            puts 'nay'
        end
    end
    test(true, palindrome('racecar'))
    test(false, palindrome('goats'))
    test(true, palindrome('atoyota'))


    def add_one(num)
        return num+1
    end

    test(6,add_one(5))
    test(0,add_one(-1))
    test(11,add_one(10))


    #sinatra app -main.rb

    @languages = ['ruby','js','css']

    #view - show.erb
    <%= @languages%>
    