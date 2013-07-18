# == Schema Information
#
# Table name: geolocations
#
#  id           :integer          not null, primary key
#  geoable_type :string(255)
#  geoable_id   :integer
#  lat          :float
#  long         :float
#  created_at   :datetime
#  updated_at   :datetime
#

class Geolocation < ActiveRecord::Base
  belongs_to :geoable, polymorphic: true
end
