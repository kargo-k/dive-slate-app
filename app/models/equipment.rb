class Equipment < ApplicationRecord
    has_many :dive_equipments
    has_many :dives, through: :dive_equipments

end
