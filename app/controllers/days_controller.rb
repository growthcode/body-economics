class DaysController < ApplicationController
  def index
    user = current_user
    jsontest = user.to_json
    render json: user, include: :days
  end
end
