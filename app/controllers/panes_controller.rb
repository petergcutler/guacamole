class PanesController < ApplicationController

  def new
  end

  def create
  end

  private
  def pane_params
    params.require(:pane).permit(:title)
  end

end
