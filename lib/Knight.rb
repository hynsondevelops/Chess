require_relative "Tile"

class Knight < Tile

	def initialize(row, col, player)
		super
		if (@player == 1) #white
			@symbol = '♘'	
		elsif (@player == 2) #black
			@symbol = '♞'
		end
	end

	def checkLegal(tile)
		row = tile.row
		col = tile.col
		player = tile.player
		condition1 = @row == row + 1 && @col == col + 2
		condition2 = @row == row + 2 && @col == col + 1
		condition3 = @row == row - 1 && @col == col + 2
		condition4 = @row == row - 2 && @col == col + 1
		condition5 = @row == row + 1 && @col == col - 2
		condition6 = @row == row + 2 && @col == col - 1
		condition7 = @row == row - 1 && @col == col - 2
		condition8 = @row == row - 2 && @col == col - 1
		if (condition1 || condition2 || condition3 || condition4 || condition5 || condition6 || condition7 || condition8)
			if (@player != player)
				return true
			end
		end
		return false
	end

end
