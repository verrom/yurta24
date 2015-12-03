class PopupContactFormsController < ApplicationController
  
  def new
  	@popup_contact_form = PopupContactForm.new
  end

 def create
	@popup_contact_form = PopupContactForm.new popup_contact_form_params
	@popup_contact_form.save
	redirect_to root_path
	AdminMailer.notification(@popup_contact_form).deliver_now
 end

 def destroy
 	@popup_contact_form = PopupContactForm.find(params[:id])
 	@popup_contact_form.destroy
 	redirect_to manager_path
 end

  private
	def popup_contact_form_params
	  params.require(:popup_contact_form).permit(:name, :phone)
	end
end
