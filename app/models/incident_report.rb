class IncidentReport < ActiveRecord::Base
  belongs_to :incident
  belongs_to :journalist
end
