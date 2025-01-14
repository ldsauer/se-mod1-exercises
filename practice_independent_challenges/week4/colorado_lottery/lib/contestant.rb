class Contestant
    attr_reader :first_name,
                :last_name,
                :age, 
                :state_of_residence, 
                :spending_money, 
                :game_interests

    def initialize(contestant_details)
        @first_name = contestant_details[:first_name]
        @last_name = contestant_details[:last_name]
        @age = contestant_details[:age]
        @state_of_residence = contestant_details[:state_of_residence]
        @spending_money = contestant_details[:spending_money]
        @game_interests = []
    end

    def full_name
       "#{@first_name} #{@last_name}"
    end

    def out_of_state?
        if @state_of_residence == "CO"
            false
        else 
            true
        end
    end

    def add_game_interest(game)
        @game_interests << game
    end

end
