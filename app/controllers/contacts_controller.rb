class ContactsController < ApplicationController

	def index
		@user = current_user
		@contacts = @user.contacts.paginate(:page => params[:page])
	end

	def show
		@user = current_user
		@contact = Contact.find(params[:id])
		@contact_emails = @contact.contact_emails
	end

	def important
		@user = current_user
		@contacts = @user.contacts.paginate(:page => params[:page], :conditions => ['important = \'t\''])
	end

end
