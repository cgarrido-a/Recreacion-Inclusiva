class DropRatinRates < ActiveRecord::Migration[5.2]
  def change
    drop_table :rating_rates
  end
end
