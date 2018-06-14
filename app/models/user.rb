class User < ActiveRecord::Base
  # User
  #   is valid with a name, password, happiness, nausea, height, and tickets (FAILED - 55)
  #   is not valid without a password (FAILED - 56)
  #   is valid with an admin boolean (FAILED - 57)
  #   defaults to admin => false (FAILED - 58)
  #   has many rides (FAILED - 59)
  #   has many attractions through rides (FAILED - 60)
  #   has a method 'mood' that returns 'sad' when the user is more nauseous than happy (FAILED - 61)
  #   has a method 'mood' that returns 'happy' when the user is more happy than nauseous (FAILED - 62)
  has_many :rides
  has_many :attractions, through: :rides

  validates :name, :password, :happiness, :nausea, :height, :tickets, presence: true
end
