module ApplicationHelper

  def flash_class(level)
    case level
      when 'notice'  then "alert alert-info alert-dismissible fade show"
      when 'success' then "alert alert-success alert-dismissible fade show"
      when 'error'   then "alert alert-danger alert-dismissible fade show"
      when 'alert'   then "alert alert-warning alert-dismissible fade show"
    end
  end

  def current_auth_resource
    if proprietario_signed_in?
      current_proprietario
    else
      current_user
    end
  end

    def current_ability
      @current_ability or @current_ability = Ability.new(current_auth_resource)
    end
end
