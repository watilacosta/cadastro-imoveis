class ProprietariosController < ApplicationController
  before_action :set_proprietario, only: [:show]

  def index
    @proprietarios = Proprietario.all.page params[:page]
  end

  def new
  end

  private 
  
  def set_proprietario
    @proprietario = Proprietario.find(params[:id])
  end
end
