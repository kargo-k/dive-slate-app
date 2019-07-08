class User < ApplicationRecord
    has_many :dives
    has_many :divesites, through: :dives
    has_many :diveshops, through: :dives
    
end
