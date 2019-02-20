class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)
    # permissions for every user, even if not logged in, go here
    if user.present?  # additional permissions for logged in users
      can [:read, :create], House
      if user.house_mate?
        can :manage, Group, house: { id: user.mates.pluck(:house_id) } #nested under house
        can :manage, Task #nested under group - if group not allowed, task is not allowed
        can :manage, User, id: user.id
        cannot :index, User
        if user.house_manager?
          can :manage, House, id: user.mates.pluck(:house_id)
          # if user.admin?
          #   can :manage, :all
          # end
        end
      end
    end
  end

end

    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
