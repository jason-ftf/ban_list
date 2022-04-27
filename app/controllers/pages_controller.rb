class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:home]

  def home
    @ban_items = BanItem.all
  end

  def landing;end

  def banned;end
end