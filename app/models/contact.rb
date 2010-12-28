# == Schema Information
# Schema version: 20101226210711
#
# Table name: contacts
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  name       :string(255)
#  important  :boolean
#  created_at :datetime
#  updated_at :datetime
#

class Contact < ActiveRecord::Base
	belongs_to :user
	has_many :contact_emails
	
	attr_accessible :name, :important
	default_scope :order => 'contacts.name ASC'
end
