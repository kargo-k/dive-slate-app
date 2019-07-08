class Divesite < ApplicationRecord
    has_many :dives
    has_many :users, through: :dives
    has_many :diveshops, through: :dives
end
