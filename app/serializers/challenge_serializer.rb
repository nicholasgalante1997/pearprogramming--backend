class ChallengeSerializer < ActiveModel::Serializer
  attributes :id, :topic, :difficulty, :git_link, :title, :synopsis, :contributor 
  has_many :my_challenges
end
