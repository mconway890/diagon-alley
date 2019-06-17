class AddTaglineToStores < ActiveRecord::Migration[5.2]
  def change
    add_column :stores, :tagline, :text
  end
end
