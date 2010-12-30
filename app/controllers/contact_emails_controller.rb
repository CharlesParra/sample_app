class ContactEmailsController < ApplicationController

	def index

		@user = current_user
		@contact_emails = @user.contact_emails
		@contact_emails2 = @user.contacts.joins(:contact_emails)
		# @contact_emails2 = @user.contacts
		# @contact_emails2 = Contact.includes(:contact_emails)
		# @contact_emails2 = Contact.find :all, :joins => :contact_emails, :conditions => ['contact_emails.contact_id = ?', 1]
		@contact_emails_list = @contact_emails.paginate(:page => params[:page])
	end

  def show
	  @user = current_user
    @contact = Contact.find(params[:id])
  	@contact_emails = @contact.contact_emails
  	@contact_emails_list = @contact_emails.paginate(:page => params[:page])
	end

end