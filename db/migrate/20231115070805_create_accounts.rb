class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :age
      t.string :contact_num
      t.username :string cd 
      t.string :password
      t.integer :role

      t.timestamps
    end
  end
end
