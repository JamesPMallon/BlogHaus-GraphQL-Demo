class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :blog
      t.references :author
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
