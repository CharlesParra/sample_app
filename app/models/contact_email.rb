# == Schema Information
# Schema version: 20101226210711
#
# Table name: contact_emails
#
#  id              :integer         not null, primary key
#  user_id         :integer
#  contact_id      :integer
#  email           :string(255)
#  total           :integer
#  received_direct :integer
#  received_cc     :integer
#  sent_direct     :integer
#  sent_cc         :integer
#  answered        :integer
#  unread          :integer
#  deleted         :integer
#  created_at      :datetime
#  updated_at      :datetime
#

class ContactEmail < ActiveRecord::Base
	belongs_to :user
	belongs_to :contact

	attr_accessible :email, :total, :received_direct, :received_cc, :sent_direct, :sent_cc, :answered, :unread, :deleted
	default_scope :order => 'contact_emails.email ASC'
end
