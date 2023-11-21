class CreateUserDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :user_details do |t|
      t.string :name 
      t.integer :role
      t.string :address 
      t.string :number 
      t.string :email 
      t.string :city 
      t.string :state
      t.string :zip
      t.references :user

      t.timestamps
    end
  end
end
