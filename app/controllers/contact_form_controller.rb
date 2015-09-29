class ContactFormController < ApplicationController

  def new
  	@contact_form = ContactForm.new
  end

  def contact_form
 	@contact_form = ContactForm.new
  end

 def create
	@contact_form = ContactForm.new(contact_form_params)
	@contact_form.save
	redirect_to root_path, notice: "Saved"
 end

  private
	def contact_form_params
	  params.require(:contact_form).permit(:name, :phone, :email, :text)
	end
end
