# frozen_string_literal: true

module ApplicationHelper
  def is_index?
    params['controller'] == 'home' && params['action'] == 'index'
  end

  def is_dashboard?
    params['controller'] == 'users' && params['action'] == 'dashboard'
  end
end
