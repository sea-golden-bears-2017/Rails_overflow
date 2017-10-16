class Post < ApplicationRecord
  validates :title, :description, presence: true
  has_many :answers
end
