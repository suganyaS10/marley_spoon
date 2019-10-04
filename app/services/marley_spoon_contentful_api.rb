class NatGeoApi < BaseService
  require 'uri'
  require 'net/http'

  # Secrets Constants
  ACCESS_TOKEN = Rails.application.secrets.CONTENTFUL['access_token']

  # URL Constants
  NATGEO_BASE_URL = Rails.application.secrets.NATGEO['base_url']
  LAND_TRIPS_URL = "trips-land"
  FAMILY_TRIPS_URL = "trips-family-journeys"
  ACTIVE_TRIPS_URL = "active-trips"
  GET_TRIPS_URL = "searchtrips"

  def self.headers_for_api
    {
      'Content-Type' => 'application/json'
      'Authorization' => ACCESS_TOKEN
    }
  end

  def self.get_trips
    trips_url = URI(NATGEO_BASE_URL + GET_TRIPS_URL + "?apiKey=" + NATGEO_API_KEY)
    resp = HTTParty.get(trips_url, headers: headers_for_api)
    trips_array = JSON.parse(resp)
  end
end
