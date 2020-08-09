class NoteSerializer < ActiveModel::Serializer
  attributes :id, :text, :my_challenge_id
  belongs_to :my_challenge
end
