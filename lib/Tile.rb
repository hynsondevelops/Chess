class Tile
	
	attr_reader :row, :col, :player
	
	def initialize(row, col, player)
		@row = row 
		@col = col
		@player = player #0 for blank 1 for white, 2 for black
	end

	def move(tile)
		if (checkLegal(tile))
			@row = tile.row
			@col = tile.col
			puts "Moved Pawn to Row: #{@row}, Col: #{@col}"
		end
	end

end
