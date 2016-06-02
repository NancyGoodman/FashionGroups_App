class BrandsController < ApplicationController
  before_action :find_brand, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy]


  def index
    @brands = Brand.all
  end

  def show
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
​
    if @brand.save
      # redirect to index action
      flash[:notice] = "Brand was saved successfully"
      redirect_to brands_path 
    else
      flash[:error] = "There was a problem saving this brand"
      render :new
    end
  end

  def edit
  end

  def update
    if @brand.update(brand_params)
      redirect_to brand_path(@brand), notice: "Brand was updated successfully"
      else
      flash.now[:error] = "There was an issue updating this brand"
      render :edit
    end
  end

  def destroy
    @brand.delete
    redirect_to brands_path
  end

  private

  def find_brand
    @brand = Brand.find_by_id(params[:id])
  end

  def brand_params
    params.require(:brand).permit(:house, :name, :head_designer, :conglomerate_id, :category_ids => [])
  end

end