class OrdersController < ApplicationController
  def new
    @food_item = FoodItem.find(params[:food_item_id])
    @order = @food_item.orders.build
  end

  def create
    @food_item = FoodItem.find(params[:food_item_id])
    @order = @food_item.orders.build order_params
    # raise "hello create order"
    if @order.save
      redirect_to menu_path, flash: {success: "Order successful."}
    else
      render 'new'
    end
  end

  def order_params
    params.require(:order).permit(:quantity)
  end
end
