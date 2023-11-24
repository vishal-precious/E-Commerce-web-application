class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user_detail
      t.references :product
      t.timestamps
    end
  end
end
