require 'redmine'

module IssueMonkeyPatch
  def self.included(base)
    base.send :include, InstanceMethods

    base.class_eval { alias_method_chain :css_classes, :named_priorities }
  end

  module InstanceMethods
    def css_classes_with_named_priorities
      "#{css_classes_without_named_priorities} priority-#{priority.name.parameterize}"
    end
  end
end

Rails.configuration.to_prepare do
  require_dependency 'issue'

  Issue.send :include, IssueMonkeyPatch unless Issue.included_modules.include?(IssueMonkeyPatch)
end

Redmine::Plugin.register :redmine_named_priorities_plugin do
  name 'Redmine Named Priorities plugin'
  author 'marquete'
  description "Makes issues' CSS classes include their priority's name."
  version '0.0.1'
  url 'http://beezwax.net/'
  author_url 'https://github.com/marquete'
end
