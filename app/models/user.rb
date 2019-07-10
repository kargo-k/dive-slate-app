class User < ApplicationRecord
    has_many :dives
    has_many :divesites, through: :dives
    has_many :diveshops, through: :dives
    validates :username, {presence: true, uniqueness: true}
    validates :password_digest, {presence: true}
    has_secure_password
    
end
