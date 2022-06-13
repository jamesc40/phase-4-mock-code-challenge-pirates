class Treasure < ApplicationRecord
  belongs_to :island
  belongs_to :pirate

  #validates :pirate_id, numericality: { greater_than: 0 }
  #validates :island_id, numericality: { greater_than: 0 }
end
