require 'password_accepted_indicator'

ActionView::Base.send :include, PasswordAcceptedIndicatorHelper

ActionView::Helpers::AssetTagHelper.register_javascript_include_default 'password_accepted_indicator'
