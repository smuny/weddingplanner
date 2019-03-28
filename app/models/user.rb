class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :email, uniqueness: true
  validates :phone_number, uniqueness: true
  
  has_many :appointments, :dependent => :destroy
  has_many :wedding_venues, through: :appointments
end
