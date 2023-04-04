class SaunasController < ApplicationController

  def index
    @sauna = Sauna.all
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

private
    def sauna_params
      params.require(:sauna).permit(:image, :name, :text, :price, :temperature, :humidity, :cool_bath_temperature, :category_id, :postcode, :prefecture_id,
        :city, :block, :building, :phone_number).merge(user_id: current_user.id)
    end

end
