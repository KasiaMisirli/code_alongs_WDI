require 'httparty'


url="http://omdbapi.com/?apikey=2f6435d9&t=jaws"
result = HTTParty.get(url)

puts result.parsed_response["Genre"]

#@movie = params[:movie_title].chomp
#url = "http://omdbapi.com/?apikey=2f6435d9&t=#{@movie}"




#         @movie = result.parsed_response["Title"].to_s
#       #for each in result  
#         @year = result.parsed_response["Year"].to_s
#         # puts result.parsed_response["Genre"].to_s
#         # puts result.parsed_response["Plot"]
#         # result.parsed_response["Poster"]
#      # end
#    # end
# end



  # if params[:movie_title] == ''
    #     redirect to ('/')
    # end
    #for each do