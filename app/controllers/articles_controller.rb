class ArticlesController < ApplicationController
	def new
       @article = Article.new
    end

    def edit
  		@article = Article.find(params[:id])
	  end

    def create
    	@article = Article.new article_params
    	@article.save
    	redirect_to manager_path
    end

    def update
  		@article = Article.find(params[:id])

  		if @article.update(article_params)
    		redirect_to manager_path
  		else
    		render 'edit'
  		end
	  end

    private

    def article_params
       params.require(:article).permit(:title, :text)
    end
end
