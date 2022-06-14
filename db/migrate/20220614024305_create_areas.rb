class CreateAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :areas do |t|
      t.string :country, null: false
      t.string :prefecture
      t.string :city
      t.timestamps
    end
  end
end
