require './lib/photograph'
require './lib/artist'

RSpec.describe Artist do 
    before :each do
        @artist = Artist.new("2","Ansel Adams","1902","1984","United States") 
    end

    it 'exists' do 
        expect(@artist).to be_an Artist
    end

    it 'has attributes of id, name, born, died and country' do
        expect(@artist.id).to eq("2")
        expect(@artist.name).to eq("Ansel Adams")
        expect(@artist.born).to eq("1902")
        expect(@artist.died).to eq("1984")
        expect(@artist.country).to eq("United States")
        expect(@artist.age_at_death).to eq(82)
    end
end
