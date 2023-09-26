class Matching < ApplicationRecord
  belongs_to :request
  belongs_to :partner
end
