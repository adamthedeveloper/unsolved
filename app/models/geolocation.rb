class Geolocation < ActiveRecord::Base
  belongs_to :geoable, polymorphic: true
end
