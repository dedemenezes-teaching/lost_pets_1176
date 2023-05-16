class Pet < ApplicationRecord
  SPECIES = ['dog', 'cat', 'turtle', 'hamster']
  # association
  # validate
  validates :name, :address, :species, :date, presence: true
  # registers few species
  validates :species, inclusion: { in: SPECIES }

  def found_days_ago
    (Date.today - date).to_i
  end
end
