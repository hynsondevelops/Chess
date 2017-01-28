require 'spec_helper'

describe Knight do
	
	describe "#new" do 
		it "Creates a Knight object" do
			knight = Knight.new(1, 2, 2)
			expect(knight).to be_an_instance_of(Knight)
		end

		it "Stores the row, column, and player" do
			knight = Knight.new(1, 2, 2)
			expect(knight.row).to be(1)
			expect(knight.col).to be(2)
			expect(knight.player).to be(2)
		end
	end

	describe "#checkLegal" do
		knight = Knight.new(4, 4, 1)

		it "Allows 8 different moves and attacks" do
			tile = Tile.new(2, 3, 0)
			expect(knight.checkLegal(tile)).to eq(true)	
			tile = Tile.new(3, 2, 0)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(5, 6, 0)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(6, 5, 0)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(2, 5, 0)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(5, 2, 0)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(6, 3, 0)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(6, 3, 0)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(2, 3, 2)
			expect(knight.checkLegal(tile)).to eq(true)	
			tile = Tile.new(3, 2, 2)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(5, 6, 2)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(6, 5, 2)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(2, 5, 2)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(5, 2, 2)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(6, 3, 2)
			expect(knight.checkLegal(tile)).to eq(true)			
			tile = Tile.new(6, 3, 2)
			expect(knight.checkLegal(tile)).to eq(true)					
		end

		it "Does not allow movement to a tile occupied by one of your other pieces" do
			tile = Pawn.new(3, 2, 1)
			expect(knight.checkLegal(tile)).to eq(false)
		end

		it "Does not allow any other movement" do
			tile = Pawn.new(5, 0, 0)
			expect(knight.checkLegal(tile)).to eq(false)
		end

	end
	
end