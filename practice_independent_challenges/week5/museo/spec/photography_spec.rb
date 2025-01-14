require './lib/photograph'
require './lib/artist'

RSpec.describe Photograph do 
    before :each do 
        @photograph = Photograph.new(1,"Rue Mouffetard, Paris (Boy with Bottles)",1,1954)
    end

    it "exits" do 
        expect(@photograph).to be_a Photograph
    end

    it "has attributes of id, name, artist_id and year" do 
        expect(@photograph.id).to eq("1")
        expect(@photograph.name).to eq("Rue Mouffetard, Paris (Boy with Bottles)")
        expect(@photograph.artist_id).to eq("1")
        expect(@photograph.year).to eq("1954")
    end
end

