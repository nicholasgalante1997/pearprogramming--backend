class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :bio, :img_url, :say_hello 
  # has_many :posts 
  has_many :my_challenges 
end
