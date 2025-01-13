require 'CSV'
require 'pry'

CSV.foreach('./data/animal_lovers.csv', headers: true, header_converters: :symbol) do |row|

end
