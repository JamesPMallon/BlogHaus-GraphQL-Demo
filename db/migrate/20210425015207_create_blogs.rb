class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.references :owner
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
