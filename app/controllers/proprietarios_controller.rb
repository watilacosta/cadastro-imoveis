class ProprietariosController < ApplicationController
  before_action :authenticate_proprietario!
  before_action :set_proprietario, only: [:show, :edit, :update, :destroy]

  def index
    @proprietarios = Proprietario.all.page params[:page]
  end

  def edit
  end

  def new
    @proprietario = Proprietario.new
  end

  def create
    @proprietario = Proprietario.new(proprietario_params)

    respond_to do |format|
      if @proprietario.save
        flash[:success] = 'Proprietário cadastrado com sucesso!'
        format.js { redirect_to proprietarios_path }
      else
        format.js { render :new } 
      end
    end
  end

  def update
    respond_to do |format|
      if @proprietario.update(proprietario_params)
        flash[:success] = 'Proprietário atualizado com sucesso!'
        format.js { redirect_to proprietarios_path }
      else
        format.js { render :edit }
      end
    end
  end

  def destroy
    @proprietario.destroy
    flash[:notice] = 'Proprietário deletado com sucesso!'
    redirect_to proprietarios_path
  end

  private 
  
  def set_proprietario
    @proprietario = Proprietario.find(params[:id])
  end

  def proprietario_params
    params.require(:proprietario).permit(:nome, :endereco, :email, :role, :password, :password_confirmation)
  end
end
