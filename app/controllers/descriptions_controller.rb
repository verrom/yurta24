class DescriptionsController < ApplicationController
	def new
       @description = Description.new
    end

    def edit
  		@description = Description.find(params[:id])
	end

    def create
    	@description = Description.new article_params
    	@description.save
    	redirect_to manager_path
    end

    def update
  		@description = Description.find(params[:id])

  		if @description.update(article_params)
    		redirect_to manager_path
  		else
    		render 'edit'
  		end
	end

    private

    def article_params
       params.require(:description).permit(:title, :text)
    end
end
