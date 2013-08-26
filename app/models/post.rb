class Post < ActiveRecord::Base
  attr_accessible :title, :body, :url

  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :title, presence: true, uniqueness: true
end
