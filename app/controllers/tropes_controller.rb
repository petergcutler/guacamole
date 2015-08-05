class TropesController < ApplicationController

  def index
    @tropes = User.find(session[:user]["id"]).tropes
  end

  def new
    @trope = Trope.new
  end

  def create
    @user = User.find(session[:user]["id"])
    @trope = @user.tropes.create!(trope_params)

    redirect_to trope_path (@trope)
  end

  def show
    @trope = Trope.find(params[:id])
    # @pane = @trope.panes
    # @item = @pane.items
  end

  def edit
    @trope = Trope.find(params[:id])
  end

  def update
    @trope = Trope.find(params[:id])
    @trope.update(trope_params)

    redirect_to trope_path(@trope)
  end

  def destroy
    @trope = Trope.find(params[:id])
    @trope.destroy

    redirect_to action: "index"
  end

  private
  def trope_params
    params.require(:trope).permit(:title)
  end

end
