require 'spec_helper'

describe Empty do
	
	describe "#new" do 
		it "Creates a Empty object" do
			empty = Empty.new(1, 2, 2)
			expect(empty).to be_an_instance_of(Empty)
		end

		it "Stores the row, column, and player" do
			empty = Empty.new(1, 2, 2)
			expect(empty.row).to be(1)
			expect(empty.col).to be(2)
			expect(empty.player).to be(2)
		end
	end

	describe "#checkLegal" do
		empty = Empty.new(1, 1, 1)

		it "Does not allow movement" do
			tile = Tile.new(3, 1, 0)
			expect(empty.checkLegal(tile)).to eq(false)
		end
		
	end
	
end 