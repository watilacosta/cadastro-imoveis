class Ability
  include CanCan::Ability

  def initialize(proprietario)
    alias_action :create, :read, :update, :destroy, to: :crud

    proprietario ||= Proprietario.new

    if proprietario.admin?
      can :manage, :all
    else
      can :crud, Imovel, proprietario_id: proprietario.id
    end
  end
end