class Dive < ApplicationRecord
    belongs_to :user
    belongs_to :diveshop, optional: true
    belongs_to :divesite
    has_many :dive_equipments
    has_many :equipment, through: :dive_equipments
    accepts_nested_attributes_for :equipment
    has_many :dive_marineanimals
    has_many :marineanimals, through: :dive_marineanimals
    accepts_nested_attributes_for :marineanimals
end
