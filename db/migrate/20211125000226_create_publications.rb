class CreatePublications < ActiveRecord::Migration[5.2]
  def change
    create_table :publications do |t|
      t.string :title
      t.text :description
      t.string :image
      t.string :map

      t.timestamps
    end
  end
end
