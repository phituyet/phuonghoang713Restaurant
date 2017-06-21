class HomeController < ApplicationController
  def index
  end

  def menu
    @sections = Section.all
    if params[:section_id]
      @section = Section.where(name: params[:section_id]).first
      @food_items = @section.food_items
    else
      @food_items = FoodItem.all
    end
  end

  def contact_us
  end
end
