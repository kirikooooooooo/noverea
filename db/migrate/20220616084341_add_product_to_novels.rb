class AddProductToNovels < ActiveRecord::Migration[6.0]
  def change
    add_column :novels, :producturl, :text
  end
end
