require './lib/boat'
require './lib/renter'
require './lib/dock'

RSpec.describe Renter do 
    it 'adds a renter' do 
        renter = Renter.new("Patrick Star", "4242424242424242")
        
        expect(renter).to be_a Renter
        expect(renter.name).to eq("Patrick Star")
        expect(renter.credit_card_number).to eq("4242424242424242")
    end
end

