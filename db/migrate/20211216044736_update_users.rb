class UpdateUsers < ActiveRecord::Migration[5.2]
  def change
    add_column(:users, :provider, :string, limit: 30, null: false, default: '')
    add_column(:users, :uid, :string, limit: 30, null: false, default: '')
  end
end
