require './lib/contestant'
require './lib/game'

RSpec.describe do 
    before(:each) do 
        @alexander = Contestant.new({first_name: 'Alexander',
        last_name: 'Aigiades',
        age: 28,
        state_of_residence: 'CO',
        spending_money: 10})
    end

    describe '#initalize' do 
        it "creates a contestant" do 
            expect(@alexander).to be_a Contestant
        end

        it "gets the contestants details" do 
            expect(@alexander.full_name).to eq("Alexander Aigiades")
            expect(@alexander.age).to eq(28)
            expect(@alexander.state_of_residence).to eq("CO")
            expect(@alexander.spending_money).to eq(10)
            expect(@alexander.out_of_state?).to eq(false)
            expect(@alexander.game_interests).to eq([])
        end

        it "adds game interests" do 
            @alexander.add_game_interest("Mega Millions")
            @alexander.add_game_interest("Pick_4")

            expect(@alexander.game_interests).to eq(["Mega Millions", "Pick_4"])
        end
    end
end
