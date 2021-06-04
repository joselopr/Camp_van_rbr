class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
    # record.van.user != user do it in the controller
  end

  def accept?
    true if user
  end

  def decline?
    true if user
  end
end
