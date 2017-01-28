require_relative "Tile"

class Empty < Tile

	def checkLegal(tile)
		return false
	end
end
