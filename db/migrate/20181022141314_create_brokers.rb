class CreateBrokers < ActiveRecord::Migration[5.2]
  def change
    create_table :brokers do |t|
      t.string :name
      t.string :fund_name
      t.integer :company_id

      t.timestamps
    end
  end
end
