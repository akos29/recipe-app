class Ability
  include CanCan::Ability

  def initialize(user)
    include CanCan::Ability

    def initialize(user)
      can :read, Recipe, public: true
  
      return unless user.present? # additional permissions for logged in users (they can read their own posts)
  
      can(:read, Recipe, user:)
  
      return unless user.admin? # additional permissions for administrators
  
      can :read, Recipe
    end
  end
end
