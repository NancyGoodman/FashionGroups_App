class ConglomeratesController < ApplicationController
  before_action :find_conglomerate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :update, :destroy]


  def index
    @conglomerates = Conglomerate.all
  end

  def show
  end

  def new
    @conglomerate = Conglomerate.new
  end

  def create
    @conglomerate = Conglomerate.new(conglomerate_params)
​
    if @conglomerate.save
      # redirect to index action
      flash[:notice] = "Conglomerate was saved successfully"
      redirect_to conglomerates_path 
    else
      flash[:error] = "There was a problem saving this conglomerate"
      render :new
    end
  end

  def edit
  end

  def update
    if @conglomerate.update(conglomerate_params)
      redirect_to conglomerate_path(@conglomerate), notice: "Conglomerate was updated successfully"
      else
      flash.now[:error] = "There was an issue updating this conglomerate"
      render :edit
    end
  end

  def destroy
    @conglomerate.delete
    redirect_to conglomerates_path
  end

  private

  def find_conglomerate
    @conglomerate = Conglomerate.find(params[:id])
  end

  def conglomerate_params
    params.require(:conglomerate).permit(:house, :name, :photo, :director)
  end

end
