class ItemsController < ApplicationController
  def show
    @item = Item.find(params[:id])
  end  
  def index
    @items = Item.all
  end  
  def new
    @item = Item.new
  end  
  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to @item
  end  

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :seller, :email, :image_url)
  end  
end
