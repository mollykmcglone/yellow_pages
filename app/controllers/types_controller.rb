class TypesController < ApplicationController
  def index
    @types = Type.all
    render :index
  end

  def show
    @type = Type.find(params[:id])
    render :show
  end
end
