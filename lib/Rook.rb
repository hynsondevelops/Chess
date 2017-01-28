require_relative "Tile"

class Rook < Tile
	
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
