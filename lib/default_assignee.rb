class DefaultAssigneeIssueHook < Redmine::Hook::ViewListener
  def view_issues_form_details_top(context = {})
    # only new users
    return if not context[:issue].id.nil?

    project = context[:project]
    if [2, 3, 6].include? project.id
      # batman-adv developers
      context[:issue].assigned_to_id = 1071
    elsif [4, 5].include? project.id
      # elektra
      context[:issue].assigned_to_id = 52
    end

    nil
  end
end
