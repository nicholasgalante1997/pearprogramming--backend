class User < ApplicationRecord
    has_many :posts 
    has_many :comments, through: :posts 
    has_many :my_challenges
    has_many :challenges, through: :my_challenges 
    has_many :notes, through: :my_challenges 

    # FOLLOWING 
    has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
    has_many :followees, through: :followed_users
    
    # FOLLOWERS 
    has_many :following_users, foreign_key: :followee_id, class_name: 'Follow'
    has_many :followers, through: :following_users

    #Auth
    validates :username, uniqueness: true
    has_secure_password 
    
    def say_hello 
        return "#{self.username} says hello!"
    end 
end


# MEDIUM DESC 
    # The first line of this has many through relationship is the one that’s likely to cause a little confusion so let’s break it down. 
    # We’re saying that a user can have many followed_users, meaning that they can follow as many people as they want. 
    # We’re going to use the foreign key follower_id to represent these followed_users and this can be found in the Follow class.
    # Go through it a time or two to make sure you get what’s going on, because it’s clear sailing after this.
    # The second line of code is exactly what you’d expect to see in any has_many_through relationship. 
    # We’re saying that we have many followees through the followed_users that we’ve defined above
