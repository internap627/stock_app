class AddImgToBrokers < ActiveRecord::Migration[5.2]
  def change
    add_column :brokers, :img, :string
  end
end
