class Document < ActiveRecord::Base
  belongs_to :journalist
  belongs_to :incident
end
