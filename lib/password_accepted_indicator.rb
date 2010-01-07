module PasswordAcceptedIndicator
  def password_accepted_indicator( name, target, options = { } )
    width = options.has_key?( :width ) ? option[:width] : 40
    return <<-EOF
    <div id="#{name}" class="password_accepted_indicator">
      <div id="#{name + 'indicator_box'}" class="box_container" style="width: #{width}">&nbsp;</div>
      <div id="#{name + 'indicator_text'}" class="text_container"></div>
    </div>
    <script type="text/javascript">
    //<![CDATA[
    $('#{target}').observe('keyup', function(event){check_password_strength('#{target}', '#{name}')}); $('#{name}_indicator_text').innerHTML = 'Denied';
    //]]>
    </script>
    EOF
  end
end
