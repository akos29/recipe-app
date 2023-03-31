class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, Recipe, public: true
    can :read, Food
    can(:manage, :all, user:)
    can :read, Recipe, public: true
    can :read, Food
  end
end
