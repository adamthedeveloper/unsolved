class PersonReport < ActiveRecord::Base
  belongs_to :journalist
  belongs_to :incident
  belongs_to :person
end
