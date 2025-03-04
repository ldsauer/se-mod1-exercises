require "pry"
# For clarity, un-comment each #binding.pry to verify your assumptions against the user_spec test. Use the questions in comments to guide your exploration.


class User
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    # binding.pry ##What is the @name property?
  end

  def say_hello
    # binding.pry ##What will be output here?
    "Hello, " + @name
  end

  def self.create_multiple(users)
    users.map do |user|
      new_user = User.new(user[:name])
      @@all << new_user
    # binding.pry ## What is new_user? What properties does it have?
    end
  end

  def self.return_users
    @@all.map do |user|
      user.name
    end
  end
end
