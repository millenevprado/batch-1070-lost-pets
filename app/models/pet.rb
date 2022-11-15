class Pet < ApplicationRecord
  SPECIES = %w[dog cat bird rabbits]
  validates :name, presence: true
  validates :species, inclusion: { in: SPECIES }
end
