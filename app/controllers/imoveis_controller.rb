class ImoveisController < ApplicationController
  before_action :set_imovel, only: [:edit, :update, :destroy]

  def index
    @imoveis = Imovel.all.page params[:page]
  end

  def new
    @imovel = Imovel.new
  end

  def create
    @imovel = Imovel.new(imovel_params)

    respond_to do |format|
      if @imovel.save
        flash[:success] = 'Imóvel criado com sucesso!'
        format.js { redirect_to imoveis_path }
      else
        format.js { render :new } 
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @imovel.update(imovel_params)
        flash[:success] = 'Imóvel atualizado com sucesso!'
        format.js { redirect_to imoveis_path }
      else
        format.js { render :edit }
      end
    end
  end

  def destroy
    @imovel.destroy
    flash[:notice] = 'Imóvel deletado com sucesso!'
    redirect_to imoveis_path
  end

  private 

  def set_imovel
    @imovel = Imovel.find(params[:id])
  end

  def imovel_params
    params.require(:imovel).permit(:proprietario_id, :endereco, :area_terreno, 
                                   :area_construida, :aliquota, :valor_venal_terreno, 
                                   :valor_venal_construcao, :valor_venal_total, :aliquota_aplicada, :area_total, :valor_imposto)
  end
end