class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.integer :user_id
      t.string :name
      t.boolean :important

      t.timestamps
    end
    add_index :contacts, :user_id
  end

  def self.down
    drop_table :contacts
  end
end
