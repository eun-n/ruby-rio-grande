require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
     @bluray = Bluray.new("Generic Bluray", 40, 140, "Generic Director", "Generic Producer")
  end

  #check initialization
  describe "Initialization" do
  	#check that it is an extended from Item
  	it "is an extended class from Item" do 
  		expect(Bluray).to be < Item
  	end
  #check that it is an instance of Bluray
    it "is an instance of the Bluray class" do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it "is assigned a name" do
      expect(@bluray.name).to eq("Generic Bluray")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(40)
    end
    it "is assigned a runtime" do
      expect(@bluray.runtime).to eq(140)
    end
    it "is assigned a director" do
      expect(@bluray.director).to eq("Generic Director")
    end
  	 it "is assigned a producer" do
      expect(@bluray.producer).to eq("Generic Producer")
    end
  end

	describe "Accessors" do

		#check getters and setters
		it "should be able to get and set runtime" do
	     	@bluray.runtime=120
	      expect(@bluray.runtime).to eq(120)
	    end

	   it "should be able to get and set director" do
	     	@bluray.director="New Director"
	      expect(@bluray.director).to eq("New Director")
	    end

	   it "should be able to get and set producer" do
	     	@bluray.producer="New Producer"
	      expect(@bluray.producer).to eq("New Producer")
	    end
	end
end