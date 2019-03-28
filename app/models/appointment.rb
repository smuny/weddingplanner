class Appointment < ApplicationRecord

  belongs_to :user
  belongs_to :wedding_venue
end
