class AddIndexToProduct < ActiveRecord::Migration[7.0]
  def change
    add_index :products, :qty_sold, name: 'main_index'
  end
end
