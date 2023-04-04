class SaunasController < ApplicationController

  def index
    @sauna = Sauna.all
  end

  def new
    @sauna = Sauna.new
  end

  def create
  end

private

end
