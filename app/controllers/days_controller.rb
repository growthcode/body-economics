class DaysController < ApplicationController
  before_action :set_day, only: [:update_score]

  def index
    user = current_user
    jsontest = user.to_json
    render json: user, include: :days
  end

  def update_score
    # Day.all do |day|
    #   if day.score == 1
    #     day.score = -2
    #   else
    #     day.score += 1
    #   end
    #   day.save
    # end
    score = @day.score

    if score == 1
      score = -2
    else
      score += 1
    end

    @day.score = score
    @day.save

    render json: {day: Day.all}
  end

  private
  def set_day
    @day = Day.find(params[:id])
  end
end
