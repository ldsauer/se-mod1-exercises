require './lib/boat'
require './lib/renter'
require './lib/dock'

RSpec.describe Boat do 
    it 'exists' do 
        kayak = Boat.new(:kayak, 20)
    
        expect(kayak).to be_a Boat
        expect(kayak.type).to eq(:kayak)
        expect(kayak.price_per_hour).to eq(20)
    end

    it "rents the boat" do
        kayak = Boat.new(:kayak, 20)
        expect(kayak.hours_rented).to eq(0)
        
        kayak.add_hour
        kayak.add_hour
        kayak.add_hour

        expect(kayak.hours_rented).to eq(3)
    end
end
