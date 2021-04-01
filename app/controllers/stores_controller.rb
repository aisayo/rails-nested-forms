class StoresController < ApplicationController
    def index 
        @stores = Store.all
    end 

    def new 
        @store = Store.new
        10.times { @store.items.build }
    end 

    def create
        @store = Store.new(store_params)
    end 

private 

    def store_params
        params.require(:store).permit(:name, items_attributes: [:name, :count])
    end


end
