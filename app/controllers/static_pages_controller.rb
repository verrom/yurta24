class StaticPagesController < ApplicationController
  def home
  	@contact_form = ContactForm.new 
  	@items = Item.all
    @articles = Article.all
    @descriptions = Description.all
  end

  def manager
  	@contact_messages = ContactForm.all
  	@item = Item.new
  	@items = Item.all
  	@article = Article.new
    @articles = Article.all
    @description = Description.new
    @descriptions = Description.all
  end
end
