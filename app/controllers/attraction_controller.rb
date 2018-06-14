class AttractionController < ApplicationController
  def create
    @attraction = Attraction.create(attraction_params)
  end

  private
  def attraction_params
    params.require(:attraction).permit(:name, :min_height, :nausea_rating, :happiness_rating, :tickets)
  end
end
