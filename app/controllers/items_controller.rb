class ItemsController < ApplicationController

  def new
  end

  def create
  end

  private
  def item_params
    params.require(:item).permit(:title, :url, :photo_url)
  end

end
