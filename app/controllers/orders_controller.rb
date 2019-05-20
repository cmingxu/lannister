class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit]
  before_action :set_breadcrumb

  def index
    @q = current_user.orders.ransack params[:q]
    @orders = @q.result.order('id asc').page params[:page]
  end

  def show
  end


  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:user_id, :product_id, :quantity, :total_price, :address_id)

    end

    def set_breadcrumb
      @breadcrumb_list = [OpenStruct.new(name: "我的小店", path: root_path), OpenStruct.new(name: "全部订单", path: orders_path) ]
    end
end
