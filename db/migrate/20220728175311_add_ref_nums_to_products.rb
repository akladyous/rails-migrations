class AddRefNumsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :red_num, :string
    add_index :products, :red_num
  end
end
