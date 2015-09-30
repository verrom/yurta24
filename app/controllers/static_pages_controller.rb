class StaticPagesController < ApplicationController
  def home
	@contact_form = ContactForm.new 
  end

  def manager
  	@contact_messages = ContactForm.all
  end
end
