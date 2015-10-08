class PopupContactFormsController < ApplicationController
  def new
  	@popup_contact_form = PopupContactForm.new
  end

 def create
	@popup_contact_form = PopupContactForm.new popup_contact_form_params
	if @popup_contact_form.save
		flash[:success] = "Мы свяжемся с Вами в ближайшее время!"
		redirect_to root_path
	else
		flash[:error] = "Данные введены некорректно!"
		redirect_to root_path	
	end
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
