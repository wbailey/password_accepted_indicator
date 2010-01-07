p "Copying files..."

FileUtils.cp File.join(File.dirname(__FILE__), "public/stylesheets/password_accepted_indicator.css"), "#{RAILS_ROOT}/public/stylesheets/" unless File.exists?("#{RAILS_ROOT}/public/stylesheets/password_accepted_indicator.css")
p "." 
FileUtils.cp File.join(File.dirname(__FILE__), "public/javascripts/password_accepted_indicator.js"), "#{RAILS_ROOT}/public/javascripts/" unless File.exists?("#{RAILS_ROOT}/public/javascripts/password_accepted_indicator.js")
p "." 

p "done!"
