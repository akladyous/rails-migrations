class AddReviewsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :reviews, :integer
  end
end
