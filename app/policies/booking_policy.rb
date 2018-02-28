class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def update?
    if record.user == user
      return true
    else
      return false
    end
  end

  def destroy?
    record.user == user
  end
end
