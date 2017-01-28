require_relative "Tile"

class Pawn < Tile

	attr_reader :initial
		
	def initialize(row, col, player)
		@initial = true
		super
	end

	def checkLegal(tile)
		row = tile.row
		col = tile.col
		player = tile.player
		if (player == 0) #empty tile 
			if (col == @col)
				if (@player == 1) #white
					multiplier = 1
				elsif (@player == 2) #black
					multiplier = -1
				end
				if (@initial)
					if (row == (@row + (multiplier * 2)) || row == (@row + (multiplier * 1)))
						@initial = false
						return true
					end
					return false
				else
					if (row == (@row + (multiplier * 1)))
						@initial = false
						return true
					end
					return false
				end
			end
		elsif (player == @player) #own piece
			return false
		else #other player's piece
			if (col == @col + 1 || col == @col - 1)
				if (@player == 1) #white
					multiplier = 1
				elsif (@player == 2) #black
					multiplier = -1
				end
				if (row == (@row + multiplier))
					return true
				end
			end
		end
		return false
	end

end

# p = Pawn.new(2, 2, 1)
# puts p.checkLegal(5, 5)
# puts p.checkLegal(5, 2)
# puts p.checkLegal(4, 2)
# puts p.checkLegal(3, 2)

# p.move(5, 5)
# p.move(4, 2)
# p.move(3, 2)
# p.move(6, 2)
# p.move(5, 2)