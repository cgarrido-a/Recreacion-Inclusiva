class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text
      t.string :images
      t.references :publication, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
