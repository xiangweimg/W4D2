require_relative "piece.rb"

class Board
    def initialize
        @board = Array.new(8) { Array.new(8, nil) }
        (0..7).each do |col|
            board[1][col] = Piece.new #pawns
            board[6][col] = Piece.new #pawns
        end

        
    end
end