class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
    end
    create_table :organizations do |t|
      t.string :name
    end
    create_table :subscriptions do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :organization_id
    end
    create_table :donations do |t|
      t.integer :amount
      t.integer :user_id
      t.integer :organization_id
    end
  end
end
