class PagesController < ApplicationController
  def home
    @place = Place.find_by_name_without_case(cookies[:city])

    if @place.blank?
      @place = Place.last
    end
  end

  def position
  end
end
