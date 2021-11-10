class Post < ApplicationRecord
  belongs_to :blog

  validates :title, :content, presence: true

  scope :published, -> { where(published: true) }
end
