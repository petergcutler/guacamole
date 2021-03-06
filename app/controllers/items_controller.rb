class ItemsController < ApplicationController

  def index
    @pane = Pane.find(params[:pane_id])
    @items = @pane.items.all
  end

  def new
    @pane = Pane.find(params[:pane_id])
    @item = Item.new
  end

  def create
    @pane = Pane.find(params[:pane_id])
    @item = Item.create!(item_params.merge(pane: @pane))

    redirect_to trope_pane_path(@pane.trope, @pane)

  end

  def show
    @pane = Pane.find(params[:pane_id])
    @item = Item.find(params[:id])
  end

  def edit
    @pane = Pane.find(params[:pane_id])
    @item = Item.find(params[:id])
  end

  def update
    @pane = Pane.find(params[:pane_id])
    @item = Item.find(params[:id])
    @item.update(item_params)

    redirect_to trope_pane_path(@pane.trope, @pane)
  end

  def destroy
    @pane = Pane.find(params[:pane_id])
    @item = Item.find(params[:id])
    @item.destroy

    redirect_to trope_pane_path(@pane.trope, @pane)
  end


  private
  def item_params
    params.require(:item).permit(:title, :url, :photo_url)
  end

end
