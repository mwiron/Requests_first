module ApplicationHelper
    
  def link_to_tasks(tasks)
    link_to(task.whole_name,
    :controller => "tasks",
    :action => "show",
    :id => tasks.id)
  end
end
