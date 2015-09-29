class StaticPagesController < ApplicationController
  def home
  end

  def manager
  	@contact_messages = ContactForm.all
  end
end
