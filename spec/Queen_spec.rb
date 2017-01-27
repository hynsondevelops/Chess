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
	
end