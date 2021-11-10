class Post < ApplicationRecord
  validates :title, :content, presence: true

  scope :published, -> { where(published: true) }
end
