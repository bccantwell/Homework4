class AddFieldToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :comments, :string
    add_reference :reviews, :movie, foreign_key: true
    add_reference :reviews, :movieuser, foreign_key: true
  end
end
