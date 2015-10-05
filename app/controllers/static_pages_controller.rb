class StaticPagesController < ApplicationController
  def home
  	@contact_form = ContactForm.new 
  	@items = Item.all
    @articles = Article.all
  end

  def manager
  	@contact_messages = ContactForm.all
  	@item = Item.new
  	@items = Item.all
  	@article = Article.new
    @articles = Article.all
  end
end
