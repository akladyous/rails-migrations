class AddFlagToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :flag, :boolean, default: false
    Product.all.each do |product|
        product.update_attribute :flag, false
    end
  end
end
