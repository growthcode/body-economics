class PagesController < ApplicationController
  def index
    @meal = Meal.new
  end
end

