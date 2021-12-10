class AddRegionToPublications < ActiveRecord::Migration[5.2]
  def change
    add_column :publications, :region, :string
  end
end
