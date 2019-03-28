class WeddingVenue < ApplicationRecord
  has_many :appointments, :dependent => :destroy
  has_many :users, through: :appointments
  has_many :wedding_caters
  has_many :caters, through: :wedding_caters

  validates :name, presence: true
  validates :location, presence: true
  validates :full_bar, presence: true
  validates :guest_accommodation, presence: true
  validates :wedding_style, presence: true
  validates :img_url, presence: true

end
