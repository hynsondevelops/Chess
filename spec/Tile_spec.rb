require 'spec_helper'

describe Tile do
	
	describe "#new" do 
		it "Creates a Tile object" do
			tile = Tile.new(1, 2, 2)
			expect(tile).to be_an_instance_of(Tile)
		end

		it "Stores the row, column, and player" do
			tile = Tile.new(1, 2, 2)
			expect(tile.row).to be(1)
			expect(tile.col).to be(2)
			expect(tile.player).to be(2)
		end
	end
	
end