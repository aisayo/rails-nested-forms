class ItemsController < ApplicationController

    def index
        @items = Item.all
    end 

    def new
        @item = Item.new
        @item.build_store
        # how can i create an empty associated object
    end

    def create 
        @item = Item.new(items_params)
        if @item.save 
            redirect_to items_path
        else 
            render :new
        end 

    end 

    def show 
    end

private 

    def items_params
        params.require(:item).permit(:name, :count, store_attributes: [:name] )
    end 


end
