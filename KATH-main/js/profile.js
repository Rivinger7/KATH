var profile = document.getElementById('profile_option');
var myOrder = document.getElementById('my-order_option');
var voucher = document.getElementById('voucher_option');

var profile_content = document.getElementById('profile_content');
var myOrder_content = document.getElementById('my-order_content');
var voucher_content = document.getElementById('voucher_content');

profile.addEventListener('click', function() {
    displayContent(profile, profile_content);
});

myOrder.addEventListener('click', function() {
    displayContent(myOrder, myOrder_content);
});

voucher.addEventListener('click', function() {
    displayContent(voucher, voucher_content);
});

function displayContent(button, content) {
    var allButtons = document.querySelectorAll('.button');
    var allContents = document.querySelectorAll('.content');
    allButtons.forEach(function(element) {
        element.classList.remove('active');
    });
    allContents.forEach(function(element) {
        element.classList.remove('active');
    });
    button.classList.add('active');
    content.classList.add('active');
}