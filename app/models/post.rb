class Post < ApplicationRecord
  belongs_to :blog, optional: true

  has_rich_text :rich_content

  validates :title, :content, presence: true

  scope :published, -> { where(published: true) }
end
