class Challenge < ApplicationRecord
    has_many :my_challenges
    has_many :users, through: :my_challenges 
end
