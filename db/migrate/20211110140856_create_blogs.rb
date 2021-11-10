class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :name, null: false
      t.boolean :published, null: false, default: false

      t.timestamps
    end
  end
end
