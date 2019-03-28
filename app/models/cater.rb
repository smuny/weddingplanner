class Cater < ApplicationRecord
  has_many :wedding_caters
  has_many :wedding_venues, through: :wedding_caters
end
