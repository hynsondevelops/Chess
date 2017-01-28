require 'spec_helper'

describe King do
	
	describe "#new" do 
		it "Creates a King object" do
			king = King.new(1, 2, 2)
			expect(king).to be_an_instance_of(King)
		end

		it "Stores the row, column, and player" do
			king = King.new(1, 2, 2)
			expect(king.row).to be(1)
			expect(king.col).to be(2)
			expect(king.player).to be(2)
		end
	end

	describe "#checkLegal" do
		king = King.new(1, 1, 1)

		it "Allows movement and attack along rows" do
			tile = Tile.new(2, 1, 0)
			expect(king.checkLegal(tile)).to eq(true)
			tile = Tile.new(2, 1, 2)
			expect(king.checkLegal(tile)).to eq(true)
		end

		it "Allows movement and attack along columns" do
			tile = Tile.new(1, 2, 0) 
			expect(king.checkLegal(tile)).to eq(true)
			tile = Tile.new(1, 2, 2) 
			expect(king.checkLegal(tile)).to eq(true)
		end

		it "Allows diagonal movement and attack" do
			tile = Tile.new(2, 2, 0)
			expect(king.checkLegal(tile)).to eq(true)
			tile = Knight.new(2, 2, 2)
			expect(king.checkLegal(tile)).to eq(true)
		end

		it "Does not allow movement to a tile occupied by one of your other pieces" do
			tile = Pawn.new(1, 2, 1)
			expect(king.checkLegal(tile)).to eq(false)
		end
		
	end
	
end