class CartsController < ApplicationController
  def show
    @ordeer_items = current_ordeer.ordeer_items
  end
end
