function password_is_accepted( target, name ) {
    box = $( name + '_indicator_box' );
    text = $( name + '_indicator_text' );

    if ( test_password( $(target).value ) ) {
        box.addClassName( 'box_accepted' );
        box.removeClassName( 'box_denied' );
        text.addClassName( 'text_accepted' );
        text.removeClassName( 'text_denied' );
        text.innerHTML = 'Accepted';
    } else {
        box.addClassName( 'box_denied' );
        box.removeClassName( 'box_accepted' );
        text.addClassName( 'text_denied' );
        text.removeClassName( 'text_accepted' );
        text.innerHTML = 'Denied';
    }
}

function test_password( password ) {
    if ( password.length < 6 ) return false;

    count = 0;

    if ( /\d/.match( password ) ) count += 1;
    if ( /[a-z]/.match( password ) ) count += 1;
    if ( /[A-Z]/.match( password ) ) count += 1;
    if ( /\W|_/.match( password ) ) count += 1;

    return count > 1;
}
