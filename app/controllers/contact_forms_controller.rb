class ContactFormsController < ApplicationController

  def new
  	@contact_form = ContactForm.new
  end

 def create
	@contact_form = ContactForm.new contact_form_params
	@contact_form.save
	redirect_to root_path
 end

 def destroy
 	@contact_form = ContactForm.find(params[:id])
 	@contact_form.destroy
 	redirect_to manager_path
 end

  private
	def contact_form_params
	  params.require(:contact_form).permit(:name, :phone, :email, :text)
	end
end