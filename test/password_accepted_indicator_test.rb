require 'rubygems'
require 'test/unit'
require File.dirname(__FILE__) + '/../lib/password_accepted_indicator'

class PasswordAcceptedIndicatorTest < Test::Unit::TestCase
  include PasswordAcceptedIndicatorHelper

  def test_full_content
    expected_content = "    <div id=\"pwi\" class=\"password_accepted_indicator\">\n      <div id=\"pwi_indicator_box\" class=\"box_container\" style=\"width: 40\">&nbsp;</div>\n      <div id=\"pwi_indicator_text\" class=\"text_container\"></div>\n    </div>\n    <script type=\"text/javascript\">\n    //<![CDATA[\n    $('password').observe( 'keyup', function( event ) { password_is_accepted( 'password', 'pwi' ) } ); $('pwi_indicator_text').innerHTML = 'Denied';\n    //]]>\n    </script>\n"
    generated_content = password_accepted_indicator 'pwi', 'password'
    assert_equal expected_content, generated_content
  end
end
