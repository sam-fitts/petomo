class AnimalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
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
