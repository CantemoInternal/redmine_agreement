require 'redmine'
require_dependency 'redmine_agreement/patches/user_patch'
require_dependency 'redmine_agreement/patches/application_controller_patch'
require_dependency 'redmine_agreement/patches/users_hooks'

Redmine::Plugin.register :redmine_agreement do
  name 'Redmine Agreement plugin'
  url 'https://github.com/centosadmin/redmine_agreement'
  description 'This is a plugin for Redmine to add agreement'
  version '0.1.1'
  author 'Southbridge'
  author_url 'https://github.com/centosadmin'

  settings(partial: 'redmine_agreement/settings',
           default: {
             'enable_agreement': false,
             'agreement_page': '',
             'reject_agreemnet_page': '' })
end
