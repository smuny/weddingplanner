class WeddingCater < ApplicationRecord
  belongs_to :cater
  belongs_to :wedding_venue
end
