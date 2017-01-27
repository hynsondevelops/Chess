require 'spec_helper'

describe Rook do
	
	describe "#new" do 
		it "Creates a Rook object" do
			rook = Rook.new(1, 2, 2)
			expect(rook).to be_an_instance_of(Rook)
		end

		it "Stores the row, column, and player" do
			rook = Rook.new(1, 2, 2)
			expect(rook.row).to be(1)
			expect(rook.col).to be(2)
			expect(rook.player).to be(2)
		end
	end
	
end