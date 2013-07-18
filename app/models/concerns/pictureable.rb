module Picturable
  extend ActiveSupport::Concern

  included do
    has_many :photos, as: :photoable
  end

end