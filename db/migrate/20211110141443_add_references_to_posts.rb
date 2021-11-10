class AddReferencesToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :blog, index: true
  end
end
