require './lib/dock'
require './lib/renter'
require './lib/boat'

RSpec.describe do 
    it 'exists' do
        dock = Dock.new("The Rowing Dock", 3)

        expect(dock).to be_a Dock
        expect(dock.name).to eq("The Rowing Dock")
        expect(dock.max_rental_time).to eq(3)
    end

    it 'has boats and rents them to renters' do 
        dock = Dock.new("The Rowing Dock", 3)
        kayak_1 = Boat.new(:kayak, 20)
        kayak_2 = Boat.new(:kayak, 20)
        sup_1 = Boat.new(:standup_paddle_board, 15)
        patrick = Renter.new("Patrick Star", "4242424242424242")
        eugene = Renter.new("Eugene Crabs", "1313131313131313")

        dock.rent(kayak_1, patrick)
        dock.rent(kayak_2, patrick) 
        dock.rent(sup_1, eugene)

        expect(dock.rental_log).to eq({kayak_1 => patrick, kayak_2 => patrick, sup_1 => eugene})
    end

    it 'charges for boat rentals' do 
        dock = Dock.new("The Rowing Dock", 3)
        kayak_1 = Boat.new(:kayak, 20)
        kayak_2 = Boat.new(:kayak, 20)
        sup_1 = Boat.new(:standup_paddle_board, 15)
        patrick = Renter.new("Patrick Star", "4242424242424242")
        eugene = Renter.new("Eugene Crabs", "1313131313131313")

        dock.rent(kayak_1, patrick)
        dock.rent(kayak_2, patrick) 
        dock.rent(sup_1, eugene)

        kayak_1.add_hour
        kayak_1.add_hour
        kayak_1.add_hour

        kayak_2.add_hour
        kayak_2.add_hour
        kayak_2.add_hour
        kayak_2.add_hour
        kayak_2.add_hour

        sup_1.add_hour
        sup_1.add_hour


        expect(dock.charge(kayak_1)).to eq({card_number: "4242424242424242", amount: 60})
        expect(dock.charge(kayak_2)).to eq({card_number: "4242424242424242", amount: 60})
        expect(dock.charge(sup_1)).to eq({card_number: "1313131313131313", amount: 30})
    
    end
end
