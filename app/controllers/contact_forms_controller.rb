class ContactFormsController < ApplicationController

  def new
  	@contact_form = ContactForm.new
  end

 def create
	@contact_form = ContactForm.new contact_form_params
	if @contact_form.save
		flash[:success] = "Мы свяжемся с Вами в ближайшее время!"
		redirect_to root_path
	else
		flash[:error] = "Данные введены некорректно!"
		redirect_to root_path	
	end
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