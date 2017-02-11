require 'redmine'

require 'default_assignee.rb'

Redmine::Plugin.register :redmine_default_assignee do
  name 'Default Assignee'
  author 'Sven Eckelmann'
  author_url 'https://git.open-mesh.org/redmine_default_assignee.git'
  description 'Default assignee for known projects'
  version '0.0'
end
