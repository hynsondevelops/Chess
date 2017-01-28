require_relative "Tile"

class Queen < Tile

	def checkLegal(tile)
		row = tile.row
		col = tile.col
		player = tile.player
		if (@row == row || @col == col || ((@row - row) == (@col - col)))
			if (@player != player)
				return true
			end
		end
		return false
	end

end
