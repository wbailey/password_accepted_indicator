require 'password_accepted_indicator'

ActionView::Base.class_eval do
  include PasswordAcceptedInidicatorHelper
end

ActionView::Helpers::AssetTagHelper.register_javascript_include_default 'password_accepted_indicator'
