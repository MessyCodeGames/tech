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
    @list = Listing.new
  end

  def create
    @list = Listing.new(num_room: params[:num_room])
    if @list.save
      render json: @list
    else
      render json: @list.errors.full_messages, status: 422
    end
  end

  def destroy
    @list = Listing.find(params[:id])
    if @list.destroy
      render json: { message: 'Listing successfully deleted' }, status: 200
    else
      render json: @list.errors.full_messages, status: 422
    end
  end

  def update
    @list = Listing.find(params[:id])
    if @list.update(num_room: params[:num_room])
      render json: @list
    else
      render json: @list.errors.full_messages, status: 422
    end
  end


end
