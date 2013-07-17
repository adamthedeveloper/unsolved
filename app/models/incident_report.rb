# == Schema Information
#
# Table name: incident_reports
#
#  id            :integer          not null, primary key
#  incident_id   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class IncidentReport < ActiveRecord::Base
  belongs_to :incident
  belongs_to :journalist
end
