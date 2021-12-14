class DropRatinRatings < ActiveRecord::Migration[5.2]
  def change
    drop_table :rating_ratings
  end
end
