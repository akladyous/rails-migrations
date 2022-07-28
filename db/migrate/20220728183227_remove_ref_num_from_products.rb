class RemoveRefNumFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_column :products, :ref_num
  end
end
