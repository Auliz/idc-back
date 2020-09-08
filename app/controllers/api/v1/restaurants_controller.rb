class Api::V1::RestaurantsController < ApplicationController
  skip_before_action :authorized

  def index
    rests = Restaurant.all
    render json: rests
  end

  def create
    puts '****************************************************'
    p params
    puts '****************************************************'
    rest = Restaurant.create(restaurant_params)
    render json: rest
    byebug
  end

  private

  def restaurant_params
    params.permit(
    :name,
    :rating,
    :price,
    :display_phone,
    :review_count,
    :url,
    :pickup,
    :delivery,
    :distance,
    :address1,
    :address2,
    :address3,
    :city,
    :zip_code,
    :state
    )
  end
end
