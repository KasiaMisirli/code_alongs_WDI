# def to_sentence(list)
#     if list.length == 3
#         return "#{list[0]}, #{list[1]} and #{list[2]}"
#     elsif list.length == 2
#         return "#{list[0]} and #{list[1]}"
#     end
# end

# def to_sentence(list)
#    if list.length == 1
#     return list.first
#    elsif list.length ==2
#     return list.join(' and ')
#    else
#     return list[0..-2].join(',')+' and '+list.last
#    end

# end

def to_sentence(list)
    case list.length
    when 1
     return list.first
    when 2
     return list.join(' and ')
    else
     "#{list[0..-2].join(',')}" +' and '+ list.last
    end
 
 end