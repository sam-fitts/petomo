class AnimalPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def update?
    record.user == user
    end

    def destroy?
    record.user == user
    end

    def create?
    return true
    end
  end
end
