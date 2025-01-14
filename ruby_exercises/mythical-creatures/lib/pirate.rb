class Pirate 
    attr_reader :name, :job 

    def initialize (name, job = "Scallywag")
        @name = name
        @job = job
        @cursed = false
        @heinous_acts = 0
    end

    def cursed?
       @cursed
    end

    def commit_heinous_act
        if @heinous_acts >= 3
            @cursed == true
        end
    end


end

