require_relative "20220728185404_add_reviews_to_products"

class RevertAddReviewsToProducts < ActiveRecord::Migration[7.0]
  def change
    revert AddReviewsToProducts
  end
end
