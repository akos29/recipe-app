class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :manage, Food, user_id: user.id # if the user is logged in can manage it's own food
    can :manage, Recipe, user_id: user.id # if the user is logged in can manage it's own recipes
    return unless user.admin? # additional permissions for administrators
    can :manage, :all # finally we give all remaining permissions only to the admins
  end
end
