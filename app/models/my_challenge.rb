class MyChallenge < ApplicationRecord
    belongs_to :user 
    belongs_to :challenge 
    has_many :notes 
end
