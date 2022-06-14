class CreateNovelAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :novel_areas do |t|
      t.references :novel, null: false, foreign_key: true
      t.references :area, null: false, foreign_key: true
      t.timestamps
    end
  end
end
