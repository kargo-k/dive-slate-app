class Diveshop < ApplicationRecord
    has_many :dives
    has_many :divesites, through: :dives
    has_many :users, through: :dives
    
end
