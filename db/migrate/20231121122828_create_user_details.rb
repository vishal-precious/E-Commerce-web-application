class CreateUserDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :user_details do |t|
      t.string :name 
      t.string :surname
      t.integer :role, default: 1
      t.string :address 
      t.string :number 
      t.string :email 
      t.string :city 
      t.string :state
      t.string :zip
      t.string :landmark
      t.references :user

      t.timestamps
    end
  end
end
