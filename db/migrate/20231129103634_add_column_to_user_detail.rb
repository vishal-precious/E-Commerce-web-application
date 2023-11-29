class AddColumnToUserDetail < ActiveRecord::Migration[6.0]
  def change
    add_column :user_details, :stripe_customer_id, :string
  end
end
