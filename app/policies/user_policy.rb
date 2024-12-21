class UserPolicy < ApplicationPolicy
  def manage?
    user.has_role?(:admin)
  end

  def create_user?
    user.has_role(:admin)
  end
  
  class Scope < ApplicationPolicy::Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
