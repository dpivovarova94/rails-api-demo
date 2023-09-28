class Customer < ApplicationRecord
  has_many :requests, dependent: :destroy
  # Validations
  validates :first_name, presence: true
  validates :last_name, presence: true
end
