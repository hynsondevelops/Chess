require_relative "Tile"

class Pawn < Tile

	attr_reader :initial
		
	def initialize(row, col, player)
		@initial = true
		super
	end

	def checkLegal(row, col)
		if (col == @col)
			if (@player == 1) #white
				multiplier = 1
			elsif (@player == 2) #black
				multiplier = -1
			end
			if (@initial)
				if (row == (@row + (multiplier * 2)) || row == (@row + (multiplier * 1)))
					return true
				end
				return false
			else
				if (row == (@row + (multiplier * 1)))
					return true
				end
				return false
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