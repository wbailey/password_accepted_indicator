ActionView::Base.send :include, PasswordAcceptedInidicatorHelper

ActionView::Helpers::AssetTagHelper.register_javascript_include_default 'password_accepted_indicator'
