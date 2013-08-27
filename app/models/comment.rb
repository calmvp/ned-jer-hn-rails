class Comment < ActiveRecord::Base
  attr_accessible :body, :post_id
  
  belongs_to :user
  belongs_to :post

  validates :body, presence: true
end
