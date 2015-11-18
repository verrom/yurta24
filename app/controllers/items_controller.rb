class ItemsController < ApplicationController

	  def new
       @item = Item.new
    end
    
    def edit
        @item = Item.find(params[:id])
    end

    def create
       @item = Item.new item_params
       @item.save
       redirect_to manager_path
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
 		 @item.destroy
     redirect_to manager_path
 	  end

    private

    def item_params
       params.require(:item).permit(:variable1, :variable2, :variable3, :variable4, :value1, :value2, :value3, :value4, :comment, :item_name, :price, :image)
    end
end
