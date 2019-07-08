class Dive < ApplicationRecord
    belongs_to :user
    belongs_to :diveshop
    belongs_to :divesite
    has_many :equipment, through: :dive_equipments
end
