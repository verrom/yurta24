class ItemsController < ApplicationController

	  def new
       @item = Item.new
    end
    
    def edit
        @item = Item.find(params[:id])
    end

    def create
       @item = Item.new item_params
       if @item.save
        flash[:success] = "Товар успешно добавлен!"
        redirect_to manager_path
       else
        flash[:error] = "Что-то пошло не так... Возможно, Вы не добавили фотографию?"
        redirect_to manager_path
       end
       
    end

    def update
      @item = Item.find(params[:id])

      if @item.update(item_params)
        redirect_to manager_path
      else
        render 'edit'
      end
    end

    def destroy
 		 @item = Item.find(params[:id])
 		 if @item.destroy
      flash[:success] = "Товар успешно Удален!"
     redirect_to manager_path
     else
      flash[:error] = "Что-то пошло не так..."
      redirect_to manager_path
     end
 	  end

    private

    def item_params
       params.require(:item).permit(:variable1, :variable2, :variable3, :variable4, :value1, :value2, :value3, :value4, :comment, :item_name, :price, :image)
    end
end
