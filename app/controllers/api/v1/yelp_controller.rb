require 'json'
require 'optparse'
require 'rest-client'

class Api::V1::YelpController < ApplicationController
  skip_before_action :authorized

  def search
    api_route = params['_json']

    puts api_route
    
    response = RestClient::Request.execute(
      method: :get,
      url: api_route,
      headers: { 'Authorization': 'Bearer ' + ENV['YELP_KEY']}
    )
    results = JSON.parse(response)
    render json: results
  end

end