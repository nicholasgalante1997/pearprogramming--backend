class CommentSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :user_id, :text_content
  belongs_to :post
  belongs_to :user 
end

class PostSerializer < ActiveModel::Serializer
  has_many :comments 
  class CommentSerializer < ActiveModel::Serializer 
    attributes :user_id, :text_content
  end 
end 
