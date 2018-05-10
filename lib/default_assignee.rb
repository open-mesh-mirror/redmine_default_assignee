class DefaultAssigneeIssueHook < Redmine::Hook::ViewListener
  def view_issues_form_details_top(context = {})
    # only new users
    return if not context[:issue].id.nil?

    context[:issue].assigned_to_id = 1071
    return if context[:project].nil?

    project = context[:project]
    if [4, 5].include? project.id
      # elektra
      context[:issue].assigned_to_id = 52
    end

    nil
  end
end
