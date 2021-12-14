class RemoveRatingFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :rating, :integer
  end
end
