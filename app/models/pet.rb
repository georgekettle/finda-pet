class Pet < ApplicationRecord
    SPECIES = ["dog", "cat", "fish", "snake", "horse"]
    validates :name, presence: true
    validates :species, inclusion: { in: SPECIES }
end
