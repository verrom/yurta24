class PicturesController < ApplicationController
	  def new
       @picture = Picture.new
    end

    def edit
        @picture = Picture.find(params[:id])
    end

    def create
       @picture = Picture.new picture_params
       if @picture.save
          redirect_to manager_path
          flash[:success] = "Фотогалерея успешно обновлена!"
       else
        flash[:error] = "Что-то пошло не так... Возможно, Вы не добавили фотографию?"
        redirect_to manager_path
       end
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
 		if @picture.destroy
      flash[:success] = "Фотография успешно удалена."
     	redirect_to manager_path
    else
        flash[:error] = "Что-то пошло не так..."
        redirect_to manager_path
    end
 	end

    private

    def picture_params
       params.require(:picture).permit(:image)
    end
end
