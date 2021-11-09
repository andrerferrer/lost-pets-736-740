class Pet < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :contact, presence: true
  validates :species, inclusion: { in: %w[ dog cat fish bird lion horse ] }
end
