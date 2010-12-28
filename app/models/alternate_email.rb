# == Schema Information
# Schema version: 20101226210711
#
# Table name: alternate_emails
#
#  id         :integer         not null, primary key
#  email      :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class AlternateEmail < ActiveRecord::Base
  belongs_to :user

  attr_accessible :email
end
