
class AnimalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
      scope.where(user: shelter)
    end

    def update?
      record.user == user
    end

    def destroy?
      user.shelter?
    end

    def create?
      return true
    end
  end
end

