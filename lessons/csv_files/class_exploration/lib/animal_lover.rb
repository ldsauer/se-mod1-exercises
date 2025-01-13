class AnimalLover
  @@all = []

  attr_reader :id, :first_name, :last_name, :age

  def initialize(id, first_name, last_name, age)
    @id = id
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    @first_name + " " + @last_name
  end

  def self.all
    @@all
  end
  
  def self.create_from_csv
    CSV.foreach(filepath, headers: true)
      @@all << AnimalLover.new(
        row[:id].to_i,
        row[:first_name], 
        row[:last_name], 
        row[:age].to_i
    )
  end
end