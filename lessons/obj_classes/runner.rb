require './unicorn'
require "./magical_power"

fred = Unicorn.new("Fred", "Silver")
gary = Unicorn.new("Gary", "Silver")

fly = MagicalPower.new("Fly", 3)
invisibility = MagicalPower.new("Invisibility", 13)

fred.add_magical_power(fly)
fred.add_magical_power(invisibility)

p fred.list_power_names