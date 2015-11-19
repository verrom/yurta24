class PicturesController < ApplicationController
	  def new
       @picture = Picture.new
    end

    def edit
        @picture = Picture.find(params[:id])
    end

    def create
       @picture = Picture.new picture_params
       @picture.save
       redirect_to manager_path
    end

    def update
      @picture = Picture.find(params[:id])

      if @picture.update(picture_params)
        redirect_to manager_path
      else
        render 'edit'
      end
    end

    def destroy
 		@picture = Picture.find(params[:id])
 		@picture.destroy
     	redirect_to manager_path
 	end

    private

    def picture_params
       params.require(:picture).permit(:image)
    end
end
