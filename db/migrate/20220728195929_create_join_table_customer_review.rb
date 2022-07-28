class CreateJoinTableCustomerReview < ActiveRecord::Migration[7.0]
  def change
    create_join_table :customers, :reviews do |t|
      t.index [:customer_id, :review_id]
      t.index [:review_id, :customer_id]
    end
  end
end
