require 'spec_helper'

describe Bishop do
	
	describe "#new" do 
		it "Creates a Bishop object" do
			bishop = Bishop.new(1, 2, 2)
			expect(bishop).to be_an_instance_of(Bishop)
		end

		it "Stores the row, column, and player" do
			bishop = Bishop.new(1, 2, 2)
			expect(bishop.row).to be(1)
			expect(bishop.col).to be(2)
			expect(bishop.player).to be(2)
		end
	end

	describe "#checkLegal" do
		bishop = Bishop.new(1, 1, 1)

		it "Allows diagonal movement and attack" do
			tile = Tile.new(3, 3, 0) 
			expect(bishop.checkLegal(tile)).to eq(true)
			tile = Pawn.new(3, 3, 2) 
			expect(bishop.checkLegal(tile)).to eq(true)
		end

		it "Does not allow movement to a tile occupied by one of your other pieces" do
			tile = Pawn.new(3, 3, 1)
			expect(bishop.checkLegal(tile)).to eq(false)
		end

		it "Does not allow any other movement" do
			tile = Tile.new(7, 5, 0)
			expect(bishop.checkLegal(tile)).to eq(false)
			tile1 = Pawn.new(7, 5, 2)
			expect(bishop.checkLegal(tile1)).to eq(false)
			tile = Tile.new(7, 1, 0)
			expect(bishop.checkLegal(tile)).to eq(false)
			tile = Pawn.new(7, 1, 2)
			expect(bishop.checkLegal(tile)).to eq(false)
			tile = Tile.new(1, 7, 0)
			expect(bishop.checkLegal(tile)).to eq(false)
			tile = Pawn.new(1, 7, 2)
			expect(bishop.checkLegal(tile)).to eq(false)
		end
		
	end

	
end