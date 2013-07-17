# == Schema Information
#
# Table name: journalists
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  nickname   :string(255)
#  first_name :string(255)
#  last_name  :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Journalist < ActiveRecord::Base
  belongs_to :user
  has_many :incident_reports
  has_many :incidents, through: :incident_reports
end
