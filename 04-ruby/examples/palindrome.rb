# examples

# def defined method

def palindrome?(str) #is it a palindrome, must return boolean
    str = str.gsub(/[\s!]/,"")
    str == str.reverse
end
print palindrome? "handah"
print palindrome? "han ah"