class Marineanimal < ApplicationRecord
  has_many :dive_marineanimals
  has_many :dives, through: :dive_marineanimals
end
