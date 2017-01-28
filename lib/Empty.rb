require_relative "Tile"

class Empty < Tile

	def initialize(row, col, player)
		super
		@symbol = ' '
	end


	def checkLegal(tile)
		return false
	end
end
