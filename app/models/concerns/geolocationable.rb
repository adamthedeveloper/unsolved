module Geolocationable
  extend ActiveSupport::Concern

  included do
    has_one :geolocation, as: :geoable
  end

end