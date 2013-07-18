# == Schema Information
#
# Table name: documents
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :text
#  journalist_id :integer
#  incident_id   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Document < ActiveRecord::Base
  include Commentlet
  belongs_to :journalist
  belongs_to :incident

end
