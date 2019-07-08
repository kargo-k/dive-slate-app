class DiveEquipment < ApplicationRecord
    belongs_to :dive
    belongs_to :equipment 
end
