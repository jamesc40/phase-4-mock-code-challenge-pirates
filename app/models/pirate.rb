class Pirate < ApplicationRecord
  has_many :treasures, dependent: :destroy
  has_many :islands, through: :treasures

  validates :name, presence: true
  validates :age, inclusion: 18..100
end
