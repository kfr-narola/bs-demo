class CreateCompanyUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :company_users do |t|
      t.integer :company_id, null: false, default: ""
      t.uuid :user_id, null: false, default: ""
      t.integer :role, default: 0

      t.timestamps
    end
    add_index :company_users, [:company_id, :user_id], unique: true
  end
end
