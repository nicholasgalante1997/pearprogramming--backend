class MyChallengeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :challenge_id, :completed
  belongs_to :user
  belongs_to :challenge 
  has_many :notes 
end
