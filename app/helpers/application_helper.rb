module ApplicationHelper

  def is_index?
    params['action']=='index'
  end

end
