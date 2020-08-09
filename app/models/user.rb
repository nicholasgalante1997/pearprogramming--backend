class User < ApplicationRecord
    has_many :posts 
    has_many :comments, through: :posts 
    has_many :my_challenges
    has_many :challenges, through: :my_challenges 
    has_many :notes, through: :my_challenges 
    has_secure_password 
    
    def say_hello 
        return "#{self.username} says hello!"
    end 
end
