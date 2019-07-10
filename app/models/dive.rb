class Dive < ApplicationRecord
    belongs_to :user
    belongs_to :diveshop
    belongs_to :divesite
    has_many :dive_equipments
    has_many :equipment, through: :dive_equipments
    accepts_nested_attributes_for :equipment
end
