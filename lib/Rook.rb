require_relative "Tile"

class Rook < Tile
	
	def initialize(row, col, player)
		super
		if (@player == 1) #white
			@symbol = '♖'	
		elsif (@player == 2) #black
			@symbol = '♜'
		end
	end

	def checkLegal(tile)
		row = tile.row
		col = tile.col
		player = tile.player
		if (@row == row || @col == col)
			if (@player != player)
				return true
			end
		end
		return false
	end

end
