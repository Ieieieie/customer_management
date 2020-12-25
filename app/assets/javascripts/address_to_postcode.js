$(function(){
    $('#address_to_postcode').click(function(){
        var input_prefecture = $('#prefecture_code option:selected').text();
        var input_address_city = $('#address_city').val();
        var seach_address = input_prefecture + input_address_city;
        $.ajax({
            url: 'https://zipcoda.net/api',
            dataType: 'jsonp',
            data: {
              address: seach_address
            }
          })
            .done(function(data){
                $('#postcode').val(data.items[0].zipcode);
          })
    })
})
