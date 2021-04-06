class OrdeerItemsController < ApplicationController
    
    def create
        @ordeer = current_ordeer
        @ordeer_item = @ordeer.ordeer_items.new(ordeer_params)
        @ordeer.save
        session[:ordeer_id] = @ordeer.id
    end

    def update
        @ordeer = current_ordeer
        @ordeer_item = @ordeer.ordeer_items.find(params[:id])
        @ordeer_item.update_attributes(ordeer_params)
        @ordeer_items = current_ordeer.ordeer_items
    end

    def destroy
        @ordeer = current_ordeer
        @ordeer_item = @ordeer.ordeer_items.find(params[:id])
        @ordeer_item.destroy
        @ordeer_items = current_ordeer.ordeer_items
    end

    private
    def ordeer_params
        params.require(:ordeer_item).permit(:menu_id,:quantity)
    end

end
