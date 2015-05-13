class DaysController < ApplicationController
  def index
    user = current_user
    render json: user, include: :days
  end
end
