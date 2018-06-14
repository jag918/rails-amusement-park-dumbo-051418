class Ride < ApplicationRecord

# has a method 'take_ride' that accounts for the user not having enough tickets (FAILED - 45)
# has a method 'take_ride' that accounts for the user not being tall enough (FAILED - 46)
# has a method 'take_ride' that accounts for the user not being tall enough and not having enough tickets (FAILED - 47)
# has a method 'take_ride' that updates ticket number (FAILED - 48)
# has a method 'take_ride' that updates the user's nausea (FAILED - 49)
# has a method 'take_ride' that updates the user's happiness (FAILED - 50)
#

  belongs_to :attraction
  belongs_to :user

  def take_ride
    if user.tickets < attraction.tickets && !(user.height < attraction.min_height)
      return "Sorry. You do not have enough tickets to ride the #{attraction.name}."
    elsif user.height < attraction.min_height && !(user.tickets < attraction.tickets)
      return "Sorry. You are not tall enough to ride the #{attraction.name}."
    elsif user.height < attraction.min_height && user.tickets < attraction.tickets
      return "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    else
        user.tickets -= attraction.tickets
        user.nausea += attraction.nausea_rating
        user.happiness += attraction.happiness_rating
        user.save
    end
  end


end
