class ListingsController < ApplicationController
  def show
    @list = Listing.find(params[:id])
    render json: @list
  end

  def index
    @lists = Listing.all
    render json: @lists
  end

  def new
  end

  def create
  end

  def destroy
  end

  def update
  end


end
