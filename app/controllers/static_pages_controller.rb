class StaticPagesController < ApplicationController
  def home
  	@contact_form = ContactForm.new 
  	@items = Item.all
    @articles = Article.all
    @descriptions = Description.all
    @popup_contact_form = PopupContactForm.new
  end

  def manager
    if signed_in?
    	@contact_messages = ContactForm.all
    	@item = Item.new
    	@items = Item.all
    	@article = Article.new
      @articles = Article.all
      @description = Description.new
      @descriptions = Description.all
      @popup_contact_forms = PopupContactForm.all
    end
  end
end
