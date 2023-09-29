class Request < ApplicationRecord
    # Associations
    belongs_to :customer
    has_many :matchings
    has_many :partners, through: :matchings

  # Validations
  validates :lat, presence: true
  validates :lon, presence: true
  validates :floor_surface, presence: true
  validates :phone, presence: true
  validates :customer_id, presence: true
  validates :is_wood, inclusion: { in: [true, false] }
  validates :is_carpet, inclusion: { in: [true, false] }
  validates :is_tiles, inclusion: { in: [true, false] }
end
