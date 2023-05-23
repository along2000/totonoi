class SaunasController < ApplicationController

  def index
    @saunas = Sauna.limit(6).order(" created_at DESC ")
  end

  def new
    @sauna = Sauna.new
  end

  def create
    @sauna = Sauna.new(sauna_params)
    if @sauna.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @sauna = Sauna.find(params[:id])
  end

  def select_category_index
    @sauna = Sauna.where(category_id: params[:id])
    if @sauna.blank?
      redirect_to root_path
    end
  end

  def edit
    @sauna = Sauna.find(params[:id])
  end

  def update
    @sauna = Sauna.find(params[:id])
    if @sauna.update(sauna_params)
      redirect_to sauna_path(@sauna.id)
    else
      render :edit
    end
  end

  def destroy
    @sauna = Sauna.find(params[:id])
    @sauna.destroy
    redirect_to root_path
  end

private
    def sauna_params
      params.require(:sauna).permit(:image, :name, :text, :price, :temperature, :humidity, :cool_bath_temperature, :category_id, :postcode, :prefecture_id,
        :city, :block, :building, :phone_number).merge(user_id: current_user.id)
    end

end
