require 'spec_helper'

describe Queen do
	
	describe "#new" do 
		it "Creates a Queen object" do
			queen = Queen.new(1, 2, 2)
			expect(queen).to be_an_instance_of(Queen)
		end

		it "Stores the row, column, and player" do
			queen = Queen.new(1, 2, 2)
			expect(queen.row).to be(1)
			expect(queen.col).to be(2)
			expect(queen.player).to be(2)
		end
	end
	
	describe "#checkLegal" do
		queen = Queen.new(1, 1, 1)

		it "Allows movement and attack along rows" do
			tile = Tile.new(7, 1, 0)
			expect(queen.checkLegal(tile)).to eq(true)
			tile = Pawn.new(7, 1, 2)
			expect(queen.checkLegal(tile)).to eq(true)
		end

		it "Allows movement and attack along columns" do
			tile = Tile.new(1, 7, 0)
			expect(queen.checkLegal(tile)).to eq(true)
			tile = Pawn.new(1, 7, 2)
			expect(queen.checkLegal(tile)).to eq(true)
		end

		it "Allows diagonal movement and attack" do
			tile = Tile.new(3, 3, 0) 
			expect(queen.checkLegal(tile)).to eq(true)
			tile = Pawn.new(3, 3, 2) 
			expect(queen.checkLegal(tile)).to eq(true)
		end

		it "Does not allow movement to a tile occupied by one of your other pieces" do
			tile = Pawn.new(3, 3, 1)
			expect(queen.checkLegal(tile)).to eq(false)
		end

		it "Does not allow any other movement" do
			tile = Tile.new(7, 5, 0)
			expect(queen.checkLegal(tile)).to eq(false)
			tile1 = Pawn.new(7, 5, 2)
			expect(queen.checkLegal(tile1)).to eq(false)
		end
		
	end


end