class RedmineAccountViewListener < Redmine::Hook::ViewListener
  render_on :view_users_form_preferences,
            :partial => 'redmine_agreement/view_users_form_preferences'
end
