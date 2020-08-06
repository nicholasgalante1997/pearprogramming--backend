class Challenge < ApplicationRecord
    has_many :mychallenges
    has_many :users, through: :mychallenges 
end
