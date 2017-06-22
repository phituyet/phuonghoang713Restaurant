class HomeController < ApplicationController
  def index
  end

  def menu

    if params[:section].present?
      @section = Section.where(name: params[:section]).first

      puts "[hoanggpn]param  section is #{@section.name}"
      if @section.name != "ALL"
        @food_items = @section.food_items
      else
        @food_items = FoodItem.all
      end
    else
      puts "[hoanggpn]param all section"
      @food_items = FoodItem.all
    end
    @sections = Section.all
  end

  def contact_us
  end
end
