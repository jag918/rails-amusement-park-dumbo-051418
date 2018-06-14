class RidesController < ApplicationController
  def create
    @ride = Ride.create(rides_params)
  end

  private
  def rides_params
    params.require(:ride).permit(:attraction_id, :user_id)
  end
end
