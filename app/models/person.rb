# == Schema Information
#
# Table name: people
#
#  id            :integer          not null, primary key
#  first_name    :string(255)
#  last_name     :string(255)
#  description   :text
#  sex           :integer          default(0)
#  race_id       :integer
#  dob           :date
#  dod           :date
#  hair_color_id :integer
#  eye_color_id  :integer
#  weight        :integer
#  height        :integer
#  type          :string(255)
#  properties    :hstore
#  created_at    :datetime
#  updated_at    :datetime
#

class Person < ActiveRecord::Base
  has_many :person_reports
  has_many :incidents, through: :person_reports
  has_many :journalists, through: :person_reports
end
