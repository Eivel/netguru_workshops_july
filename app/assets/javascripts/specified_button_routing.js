$(function() {
    $('#logout_button').click(function() {
$.ajax({
    url: Routes.destroy_user_session_path(),
    type: "DELETE"
}).done(function(){
    window.location.href = "/";
});
});
});

$(function() {
    $('#login_button').click(function() {
    window.location.href = Routes.new_user_session_path()
});
});

