class CreateAlternateEmails < ActiveRecord::Migration
  def self.up
    create_table :alternate_emails do |t|
      t.string :email
      t.integer :user_id

      t.timestamps
    end
    add_index :alternate_emails, :user_id
  end

  def self.down
    drop_table :alternate_emails
  end
end
