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
	
end