class MenusController < ApplicationController
    def add
    end
    def show
        @menu = Menu.all
    end
    def create
        menu = Menu.new(menu_params)
        if menu.save
            redirect_to "/addmenu"
        else
            redirect_to "/menus"
        end 
    end
    private
    def menu_params
        params.require(:menu).permit(:category,:name,:description,:price)
    end
end
