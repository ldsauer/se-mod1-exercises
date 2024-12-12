class MagicalPower
    attr_reader :name, :energy_required

    def initialize(name, energy_required)
        @name = name
        @energy_required = energy_required
    end

    def add_magical_power(power)
        @magical_powers << power
    end

    def list_power_names
        "#{@magical_powers[0].name}, #{@magical_powers[1].name}"
    end
end