require_relative "Tile"

class King < Tile
		
	def initialize(row, col, player)
		super
		if (@player == 1) #white
			@symbol = '♔'	
		elsif (@player == 2) #black
			@symbol = '♚'
		end
	end

	def checkLegal(tile)
		row = tile.row
		col = tile.col
		player = tile.player
		if ((@row == row + 1 || @row == row - 1 || @row = row) && (@col == col + 1 || @col == col - 1 || @col = col))
			if (@player != player)
				return true
			end
		end
		return false
	end

end
