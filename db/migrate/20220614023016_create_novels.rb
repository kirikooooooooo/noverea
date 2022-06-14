class CreateNovels < ActiveRecord::Migration[6.0]
  def change
    create_table :novels do |t|
      t.string :title, null: false
      t.string :auther, null: false
      t.string :release_year
      t.integer :genre_id
      t.string :another_area
      t.text :spot
      t.text :synopsis
      t.text :mediamix
      t.timestamps
    end
  end
end
