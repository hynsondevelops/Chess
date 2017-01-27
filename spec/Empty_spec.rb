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
	
end