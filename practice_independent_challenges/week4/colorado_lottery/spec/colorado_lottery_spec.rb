require "./lib/contestant"
require "./lib/game"
require "./lib/colorado_lottery"
require "pry"

RSpec.describe ColoradoLottery do
    before(:each) do
        @lottery = ColoradoLottery.new
        @pick_4 = Game.new('Pick_4', 2)
        @mega_millions = Game.new('Mega Millions', 5, true)
        @cash_5 = Game.new('Cash_5', 1)
        @alexander = Contestant.new({
            first_name: 'Alexander',
            last_name: 'Aigades',
            age: 28,
            state_of_residence: 'CO',
            spending_money: 10
        })
        @benjamin = Contestant.new({
            first_name: 'Benjamin',
            last_name: 'Franklin',
            age: 17,
            state_of_residence: 'PA',
            spending_money: 100
        })
        @frederick = Contestant.new({
            first_name:  'Frederick',
            last_name: 'Douglass',
            age: 55,
            state_of_residence: 'NY',
            spending_money: 20
        })
        @winston = Contestant.new({
            first_name: 'Winston',
            last_name: 'Churchill',
            age: 18,
            state_of_residence: 'CO',
            spending_money: 5
        })
        
    end

    describe '#initialize' do 
        it "creates a Colorado Lottery" do
            expect(@lottery). to be_a ColoradoLottery
        end
    end

    describe '#interested_games' do 
        it "adds interested games" do 
            @alexander.add_game_interest('Pick_4')
            @alexander.add_game_interest('Mega Millions')
            @frederick.add_game_interest('Mega Millions')
            @winston.add_game_interest('Cash_5')
            @winston.add_game_interest('Mega Millions')
            @benjamin.add_game_interest('Mega Millions')

            expect(@alexander.game_interests).to eq(['Pick_4', 'Mega Millions'])
            expect(@frederick.game_interests).to eq(['Mega Millions'])
            expect(@winston.game_interests).to eq(['Cash_5', 'Mega Millions'])
            expect(@benjamin.game_interests).to eq(['Mega Millions'])
        end

        it "checks if they are interested and 18 or older" do 
            @alexander.add_game_interest('Pick_4')
            @alexander.add_game_interest('Mega Millions')
            @frederick.add_game_interest('Mega Millions')
            @winston.add_game_interest('Cash_5')
            @winston.add_game_interest('Mega Millions')
            @benjamin.add_game_interest('Mega Millions')

            expect(@lottery.interested_and_18?(@alexander, @pick_4)).to eq(true)
            expect(@lottery.interested_and_18?(@benjamin, @mega_millions)).to eq(false)
            expect(@lottery.interested_and_18?(@alexander, @cash_5)).to eq(false)
        end

        it 'checks to see if they can register for a game' do 
            @alexander.add_game_interest('Pick_4')
            @alexander.add_game_interest('Mega Millions')
            @frederick.add_game_interest('Mega Millions')
            @winston.add_game_interest('Cash_5')
            @winston.add_game_interest('Mega Millions')
            @benjamin.add_game_interest('Mega Millions')

            expect(@lottery.can_register?(@alexander, @pick_4)).to eq(true)
            expect(@lottery.can_register?(@alexander, @cash_5)).to eq(false)
            expect(@lottery.can_register?(@frederick, @mega_millions)).to eq(true)
            expect(@lottery.interested_and_18?(@benjamin, @mega_millions)).to eq(false)
            expect(@lottery.can_register?(@frederick, @cash_5)).to eq(false)
        end
    end

    describe '#register_contestants' do
        it "registers eligible contestants" do 
            @alexander.add_game_interest('Pick_4')
            @alexander.add_game_interest('Mega Millions')
            @frederick.add_game_interest('Mega Millions')
            @winston.add_game_interest('Cash_5')
            @winston.add_game_interest('Mega Millions')
            @benjamin.add_game_interest('Mega Millions')
        end
    end

end