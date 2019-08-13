# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)
    # permissions for every user, even if not logged in, go here
    if user.present? # additional permissions for logged in users
      can %i[read create join], House
      can :manage, User, id: user.id
      cannot :index, User
      if user.house_mate?
        can :manage, Group, house: { id: user.mates.pluck(:house_id) } # nested under house
        can :manage, Task # nested under group - if group not allowed, task is not allowed
        if user.house_manager?
          can :manage, House, id: user.managed_houses.pluck(:id)
          # if user.admin?
          #   can :manage, :all
          # end
        end
      end
    end
  end
end
