# == Schema Information
#
# Table name: media_items
#
#  id            :integer          not null, primary key
#  title         :string(255)
#  description   :text
#  journalist_id :integer
#  incident_id   :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class MediaItem < ActiveRecord::Base
end
