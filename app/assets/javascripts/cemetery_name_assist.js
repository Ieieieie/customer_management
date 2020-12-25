$(function () {
    $('#cemetery_name_other').click(function(){
        $('input[id="cemetery_radio_button"]:radio').prop('checked', false);
        $('#cemetery_name_other').val('');
    })
});