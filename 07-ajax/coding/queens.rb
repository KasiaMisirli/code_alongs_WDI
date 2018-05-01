# queens = Queens.new(:white => [2, 3], :black => [5, 6])
# queens.to_s
# => "O O O O O O O O
    #   O O O O O O O O
    #   O O O W O O O O
    #   O O O O O O O O
    #   O O O O O O O O
    #   O O O O O O B O
    #   O O O O O O O O
    #   O O O O O O O O

# queens.attack?
# # => true


class Queens 


    # @white = []
    # @black = []
   
    def initialize (options={white: [0,3], black: [7,3]})
        @board = []    
        @row = []
        @black = options[:black]
        @white = options[:white]
        @board = create_board()
        same()
    end

    def create_board
        # @row = []
        8.times{
            @row.push('0')
            # puts @row
        }

        8.times {
            @board.push(@row)
            # puts @board
        }

    end

    def white
        return @white
    end

    def black
        return @black

    end
    def same
       if @white==@black
        raise ArgumentError 
        end
    end
    
    def to_s
        
        return @board
    end

end