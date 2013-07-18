# == Schema Information
#
# Table name: photos
#
#  id             :integer          not null, primary key
#  title          :string(255)
#  description    :text
#  journalist_id  :integer
#  photoable_id   :integer
#  photoable_type :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#  image          :string(255)
#

class Photo < ActiveRecord::Base
  include Commentlet
  belongs_to :photoable, polymorphic: true
end
