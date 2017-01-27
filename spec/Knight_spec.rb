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
	
end