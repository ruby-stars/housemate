module ApplicationHelper

  def is_index?
    params['controller'] == 'home' && params['action'] == 'index'
  end

end
