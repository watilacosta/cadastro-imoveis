class ImoveisController < ApplicationController
  def index
    @imoveis = Imovel.all
  end

  def show
  end

  def new
    @imovel = Imovel.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def imovel_params
    params.require(:imovel).permit(:proprietario, :endereco, :area_terreno, 
                                   :area_construida, :aliquota, :valor_venal_terreno, 
                                   :valor_venal_construcao, :aliquota_aplicada)
  end
end