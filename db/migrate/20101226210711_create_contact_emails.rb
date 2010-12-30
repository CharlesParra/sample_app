class CreateContactEmails < ActiveRecord::Migration
  def self.up
    create_table :contact_emails do |t|
      t.integer :user_id
      t.integer :contact_id
      t.string  :email
      t.integer :total
      t.integer :received_direct
      t.integer :received_cc
      t.integer :sent_direct
      t.integer :sent_cc
      t.integer :answered
      t.integer :unread
      t.integer :deleted

      t.timestamps
    end
    add_index :contact_emails, :user_id
    add_index :contact_emails, :contact_id
  end

  def self.down
    drop_table :contact_emails
  end
end
