class Comment < ApplicationRecord
  belongs_to :story
  validates :content, :name, presence: true
end
