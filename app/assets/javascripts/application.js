// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
var BatchHelper = {};
$(function () {
    if ($('#spawn').length > 0) {
        check_job();
        BatchHelper.start_time = Date.now();
    }
});

function check_job() {
    var batch_id = $('#spawn').attr('data-id');
    $.getJSON('query_batch/' + batch_id, callback);
}

function callback(response) {
    var status = response.status;
    var elapsed = (Date.now() - BatchHelper.start_time) / 1000;
    $('#spawn').text('Job status: ' + status + '. Elapsed time: ' + elapsed + ' seconds.');
    switch(status) {
        case 'processing':
            setTimeout(check_job, 5000);
            break;
        case 'success':
            show_batch();
            break;
        default:
            $('#spawn').append('<div>invalid response</div>');
    }
}

function show_batch() {
    var batch_id = $('#spawn').attr('data-id');
    $.getScript('batches/' + batch_id + '.js');
}