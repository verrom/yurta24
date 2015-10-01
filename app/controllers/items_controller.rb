class ItemsController < ApplicationController

	  def new
       @item = Item.new
    end
    
    def create
       @item = Item.new item_params
       @item.save
       redirect_to manager_path
    end

    def destroy
 		 @item = Item.find(params[:id])
 		 @item.destroy
     redirect_to manager_path
 	  end

    private

    def item_params
       params.require(:item).permit(:variable1, :variable2, :variable3, :variable4, :value1, :value2, :value3, :value4, :comment)
    end
end
