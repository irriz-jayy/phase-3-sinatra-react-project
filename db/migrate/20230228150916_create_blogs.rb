class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.belongs_to :author, null: false, foreign_key: true
      t.timestamps
    end
  end
end