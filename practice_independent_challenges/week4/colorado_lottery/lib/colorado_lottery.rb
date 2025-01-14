require 'pry'
class ColoradoLottery
    attr_reader :registered_contestants, :winners

    def initalize
        @registered_contestants = {}
        @winners =[]
        @current_contestants = {}
    end

    def interested_and_18?(contestant, game)
        contestant.age >= 18 && contestant.game_interests.include?(game.name)
    end

    def can_register?(contestant, game)
        interested_and_18?(contestant, game) && contestant.state_of_residence == "CO" || game.national_drawing?
    end

    def register_contestant(contestant, game)
        if can_register?(contestant, game) && contestant.spending_money > game.cost 
            @registered_contestants[game.name] ||= []
            @registered_contestants[game.name] << contestant
        end
    end

    def eligible_contestants(game)
        eligibe = @registered_contestants[game.name].select do |contestant|
            contestant.spending_money > game.cost
        end
        eligible
    end
    
    def charge_contestant(contestant, game)
        if @registered_contestants[game.name]&.include?(contestant)
            @current_contestants[game.name] ||= []
            @current_contestants[game.name] << contestant.full_name
        end
    end
end
