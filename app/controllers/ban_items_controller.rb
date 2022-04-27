class BanItemsController < ApplicationController
  before_action :authenticate_user!
  
  def new
    @ban_item = BanItem.new
  end

  def create
    @ban_item = BanItem.new(ban_item_params)
    if @ban_item.save
      redirect_to home_path
    else
      render :new, status: :unprocessible_entity
    end
  end

  def destroy
    @ban_item = BanItem.find(params[:id])
    if @ban_item.destroy
      redirect_to home_path
    end
  end

  private 

  def ban_item_params
    params.require(:ban_item).permit(:email, :ip)
  end
end