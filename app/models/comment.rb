# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :text
#  commentable_id   :integer
#  commentable_type :string(255)
#  journalist_id    :integer
#  created_at       :datetime
#  updated_at       :datetime
#

class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
end
