class Journalist < ActiveRecord::Base
  belongs_to :user
  has_many :incidents, through: :incident_report
end
