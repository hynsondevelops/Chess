require_relative "../lib/Bishop.rb"
require_relative "../lib/Pawn.rb"
require_relative "../lib/King.rb"
require_relative "../lib/Queen.rb"
require_relative "../lib/Rook.rb"
require_relative "../lib/Tile.rb"
require_relative "../lib/Empty.rb"
require_relative "../lib/Knight.rb"

class Chess

	attr_reader :board

	def initialize
		createBoard
	end

	def createBoard
		@board = Array.new
		for i in 0...8
			@board[i] = Array.new
		end
		createRowOne
		createRowTwo
		createRowsThreeThroughSix
		createRowSeven
		createRowEight
	end

	def createRowOne
		@board[0][0] = Rook.new(0, 0, 1)
		@board[0][1] = Knight.new(0, 1, 1)
		@board[0][2] = Bishop.new(0, 2, 1)
		@board[0][3] = Queen.new(0, 3, 1)
		@board[0][4] = King.new(0, 4, 1)
		@board[0][5] = Bishop.new(0, 5, 1)
		@board[0][6] = Knight.new(0, 6, 1)
		@board[0][7] = Rook.new(0, 7, 1)
	end

	def createRowTwo
		for i in 0...8
			@board[1][i] = Pawn.new(1, i, 1)
		end
	end

	def createRowsThreeThroughSix
		for i in 0...4
			for j in 0...8
				@board[i + 2][j] = Empty.new(i + 2, j, 0)
			end
		end
	end

	def createRowSeven
		for i in 0...8
			@board[6][i] = Pawn.new(6, i, 2)
		end
	end

	def createRowEight
		@board[7][0] = Rook.new(7, 0, 2)
		@board[7][1] = Knight.new(7, 1, 2)
		@board[7][2] = Bishop.new(7, 2, 2)
		@board[7][3] = King.new(7, 3, 2)
		@board[7][4] = Queen.new(7, 4, 2)
		@board[7][5] = Bishop.new(7, 5, 2)
		@board[7][6] = Knight.new(7, 6, 2)
		@board[7][7] = Rook.new(7, 7, 2)
	end

	def printBoard
		for i in 0...8
			for j in 0...8
				print (@board[7- i][j]).symbol
			end
			print "\n"
		end
	end

end


a = Chess.new

a.printBoard