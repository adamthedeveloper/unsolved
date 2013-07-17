class Person < ActiveRecord::Base
  has_many :incidents, through: :person_reports
  has_many :journalists, through: :person_reports
end
