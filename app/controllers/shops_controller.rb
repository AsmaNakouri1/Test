class ShopsController < ApplicationController



  def show
    @shop= Shop.find(params[:id])
  end

  def edit
    @shop= Shop.find(params[:id])
  end

  def update
     @shop= Shop.find(params[:id])
    if  @shop.update(post_params)
      redirect_to shop_path
    else
     render 'edit'
    end
  end

  def new
    @shop = Shop.new
  end

  def create

    @shop = Shop.new(post_params)
    if @shop.save
      redirect_to shop_path(shop.id)
    else
      render 'new'
    end
  end

  def destroy
    @shop= Shop.find(params[:id])
    @shop.destroy
    redirect_to shops_path
  end

  def import
   Shop.import(params[:file])
    redirect_to shops_path, notice: "shops imporeted"
  end

  def index
    if params[:search].present?
      @shops = Shop.near(params[:search], 1, :order => :distance)
    else
      @shops = Shop.all
    end
  end


  private
  def post_params
    params.require(:shop).permit(:name, :chain, :latitude, :longitude, :address, :city, :zip, :phone, :country_code)
  end


end
