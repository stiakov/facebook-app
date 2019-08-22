class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  validates :content, presence: :true, length: {minimum: 1, maximum: 500}
end