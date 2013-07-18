# == Schema Information
#
# Table name: person_reports
#
#  id            :integer          not null, primary key
#  incident_id   :integer
#  journalist_id :integer
#  person_id     :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class PersonReport < ActiveRecord::Base
  include Commentlet
  include Picturable
  belongs_to :journalist
  belongs_to :incident
  belongs_to :person
end
