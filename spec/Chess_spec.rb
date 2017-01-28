require 'spec_helper'

describe Chess do
	
	describe "#new" do 
		it "Creates a Chess object" do
			chess = Chess.new
			expect(chess).to be_an_instance_of(Chess)
		end

		it "Creates two players" do
			expect(false).to eq(true)
		end

		it "Builds the board" do
			chess = Chess.new
			boardPrint = ""
			for i in 0...8
				for j in 0...8
					boardPrint += chess.board[7 - i][j].symbol
				end
				boardPrint += "\n"
			end
			expect(boardPrint).to eq("♜♞♝♚♛♝♞♜\n♟♟♟♟♟♟♟♟\n        \n        \n        \n        \n♙♙♙♙♙♙♙♙\n♖♘♗♕♔♗♘♖\n")
		end
	end
	
end

