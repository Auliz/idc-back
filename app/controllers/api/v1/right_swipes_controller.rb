class Api::V1::RightSwipesController < ApplicationController
  skip_before_action :authorized, only: [:index]

  def index
    swipes = RightSwipe.all
    render json: swipes
  end

  def create
    guest = User.find_by(params[:guest_username])
    host = User.find_by(params[:host_username])
    swipe = host.host_swipes.new(guest_id: guest.id)

    if swipe.save
      render json: {message: 'Succesfully paired swipe'}
    else
      render json: {message: 'Did not pair swipe'}
    end
  end

end
