class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|
      t.integer :broker_id
      t.integer :stock_id

      t.timestamps
    end
  end
end
