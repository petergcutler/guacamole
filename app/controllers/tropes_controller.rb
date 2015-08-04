class TropesController < ApplicationController

  def index #homepage, essentially
    @tropes = User.find(session[:user]["id"]).tropes
  end

  def new
  end



  def create
    @trope = Trope.new(trope_params)

    @trope.save
    redirect_to @trope
  end

  private
  def trope_params
    params.require(:trope).permit(:title)
  end

end
