class Partner < ApplicationRecord
  # Associations
  has_many :matchings
  has_many :requests, through: :matchings

  # Validations
  validates :lat, presence: true
  validates :lon, presence: true
  validates :operating_radius, presence: true
  validates :rating, presence: true
  validates :is_wood, inclusion: { in: [true, false] }
  validates :is_carpet, inclusion: { in: [true, false] }
  validates :is_tiles, inclusion: { in: [true, false] }
end
