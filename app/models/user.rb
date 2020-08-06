class User < ApplicationRecord
    has_many :posts 
    has_many :comments, through: :posts 
    has_many :mychallenges
    has_many :challenges, through: :mychallenges 
    has_many :notes, through: :mychallenges 
    has_secure_password 
end
