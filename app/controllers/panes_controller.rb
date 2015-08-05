class PanesController < ApplicationController

  def index
    @trope = Trope.find(params[:trope_id])
    @panes = @trope.panes.all
  end

  def new
    @trope = Trope.find(params[:trope_id])
    @pane = Pane.new
  end

  def create
    @trope = Trope.find(params[:trope_id])
    @pane = Pane.create!(pane_params.merge(trope: @trope))

    redirect_to trope_path(@trope)
  end

  def show
    @item = Item.find(params[:id])
    @pane = Pane.find(@item)
    redirect_to trope_path(@pane)
  end

  def edit
    @trope = Trope.find(params[:trope_id])
    @pane = Pane.find(params[:id])
  end

  def update
    @trope = Trope.find(params[:trope_id])
    @pane = Pane.find(params[:id])
    @pane.update(pane_params)

    redirect_to trope_path(@trope)
  end

  def destroy
    @trope = Trope.find(params[:trope_id])
    @pane = Pane.find(params[:id])
    @pane.destroy

    redirect_to trope_path( @trope )
  end

  private
  def pane_params
    params.require(:pane).permit(:title)
  end

end
