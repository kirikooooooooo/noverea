class RemoveProductFromNovelss < ActiveRecord::Migration[6.0]
  def change
    remove_column :novels, :producturl, :text
  end
end
