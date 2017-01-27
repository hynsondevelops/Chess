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
	
end