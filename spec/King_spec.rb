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
	
end