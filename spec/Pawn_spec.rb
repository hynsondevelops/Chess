require 'spec_helper'

describe Pawn do
	
	describe "#new" do 
		it "Creates a Pawn object" do
			pawn = Pawn.new(1, 2, 2)
			expect(pawn).to be_an_instance_of(Pawn)
		end

		it "Stores the row, column, and player" do
			pawn = Pawn.new(1, 2, 2)
			expect(pawn.row).to be(1)
			expect(pawn.col).to be(2)
			expect(pawn.player).to be(2)
		end
	end

	describe "#checkLegal" do
		pawn = Pawn.new(1, 1, 1)

		it "Allows initial move of 2 spaces" do
			tile = Tile.new(3, 1, 0)
			expect(pawn.checkLegal(tile)).to eq(true)
		end

		it "Allows only forward movement" do
			tile = Tile.new(3, 1, 0)
			expect(pawn.checkLegal(tile)).to eq(false)
		end

		it "Allows movement of 1 space after initial move" do
			tile = Tile.new(3, 1, 0) 
			expect(pawn.checkLegal(tile)).to eq(false)
		end

		it "Allows diagonal attack only" do
			tile = Knight.new(2, 2, 2)
			expect(pawn.checkLegal(tile)).to eq(true)
			pawn = Pawn.new(2, 2, 2)
			tile = Knight.new(1, 1, 1)
			expect(pawn.checkLegal(tile)).to eq(true)
		end
		
	end
	
end