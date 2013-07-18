# == Schema Information
#
# Table name: incident_reports
#
#  id            :integer          not null, primary key
#  journalist_id :integer
#  incident_id   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class IncidentReport < ActiveRecord::Base
  include Commentlet
  include Geolocationable
  belongs_to :incident
  belongs_to :journalist
end
