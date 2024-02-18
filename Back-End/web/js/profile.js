var profile = document.getElementById('profile_option');
var myOrder = document.getElementById('my-order_option');
var voucher = document.getElementById('voucher_option');

var profile_content = document.getElementById('profile_content');
var myOrder_content = document.getElementById('my-order_content');
var voucher_content = document.getElementById('voucher_content');

profile.addEventListener('click', function () {
    displayContent(profile, profile_content);
});

myOrder.addEventListener('click', function () {
    displayContent(myOrder, myOrder_content);
});

voucher.addEventListener('click', function () {
    displayContent(voucher, voucher_content);
});

function displayContent(button, content) {
    var allButtons = document.querySelectorAll('.button');
    var allContents = document.querySelectorAll('.content');
    allButtons.forEach(function (element) {
        element.classList.remove('active');
    });
    allContents.forEach(function (element) {
        element.classList.remove('active');
    });
    button.classList.add('active');
    content.classList.add('active');
}



document.addEventListener('DOMContentLoaded', function () {
    let order_btns = document.querySelectorAll('.history-button');
    let banner_contents = document.querySelectorAll('.order-history-content');

    order_btns.forEach(function (button, index) {
        button.addEventListener('click', function () {
            if (banner_contents[index].classList.contains('open')) {
                button.classList.remove('open');
                banner_contents[index].classList.remove('open');
            } else {
                displayHistoryOrder(button, banner_contents[index]);
            }
        });
    });
});

function displayHistoryOrder(button, content) {
    var allButtons = document.querySelectorAll('.history-button');
    var allContents = document.querySelectorAll('.order-history-content');
    
    allButtons.forEach(function (button) {
        button.classList.remove('open');
    });
    allContents.forEach(function (content) {
        content.classList.remove('open');
    });
    content.classList.add('open');
    button.classList.add('open');
}