class DaysController < ApplicationController
  before_action :set_day, only: [:edit, :update_score]

  def index
    user = current_user
    jsontest = user.to_json
    render json: user, include: :days
  end

  def edit
  end

  def new_meal
    binding.pry
  end

  def update_score

    if @day.score == -2
      @day.score = 1
    else
      @day.score -= 1
    end

    if @day.score > 1 || @day.score < -2
      @day.score = 0
    end

    @day.save

    render json: {day: @day}
  end

  private
  def set_day
    @day = Day.find(params[:id])
  end
end
