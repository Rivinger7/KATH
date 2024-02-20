var literature = document.getElementById('literature_option');
var foreign = document.getElementById('foreign_option');
var economic = document.getElementById('economic_option');
var children = document.getElementById('children_option');
var other = document.getElementById('other_option');
// Testing Start
var new1 = document.getElementById('new1_option');
var new2 = document.getElementById('new2_option');
var new3 = document.getElementById('new3_option');
var new4 = document.getElementById('new4_option');
var new5 = document.getElementById('new5_option');
// Testing End

var literature_content = document.getElementById('literature_content');
var foreign_content = document.getElementById('foreign_content');
var economic_content = document.getElementById('economic_content');
var children_content = document.getElementById('children_content');
var other_content = document.getElementById('other_content');
// Testing Start
var new1_content = document.getElementById('new1_content');
var new2_content = document.getElementById('new2_content');
var new3_content = document.getElementById('new3_content');
var new4_content = document.getElementById('new4_content');
var new5_content = document.getElementById('new5_content');
// Testing End

literature_content.classList.add('active');
new1_content.classList.add('active');

literature.addEventListener('click', function () {
    displayContent(literature, literature_content);
});
foreign.addEventListener('click', function () {
    displayContent(foreign, foreign_content);
});
economic.addEventListener('click', function () {
    displayContent(economic, economic_content);
});
children.addEventListener('click', function () {
    displayContent(children, children_content);
});
other.addEventListener('click', function () {
    displayContent(other, other_content);
});

// Testing Start
new1.addEventListener('click', function () {
    displayContentNeww(new1, new1_content);
});

new2.addEventListener('click', function () {
    displayContentNeww(new2, new2_content);
});

new3.addEventListener('click', function () {
    displayContentNeww(new3, new3_content);
});

new4.addEventListener('click', function () {
    displayContentNeww(new4, new4_content);
});

new5.addEventListener('click', function () {
    displayContentNeww(new5, new5_content);
});
// Testing End

// Buttons for all
// function displayContent(button, content) {
//     var allButtons = document.querySelectorAll('.button');
//     var allContents = document.querySelectorAll('.content');
//     allButtons.forEach(function(element) {
//         element.classList.remove('active');
//     });
//     allContents.forEach(function(element) {
//         element.classList.remove('active');
//     });
//     button.classList.add('active');
//     content.classList.add('active');
// }

function displayContent(button, content) {
    var allButtons = document.querySelectorAll('.button-option-normal');
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

function displayContentNeww(button, content) {
    var allButtons = document.querySelectorAll('.button-option-owl');
    var allContents = document.querySelectorAll('.owl-content');
    allButtons.forEach(function (element) {
        element.classList.remove('active');
    });
    allContents.forEach(function (element) {
        element.classList.remove('active');
    });
    button.classList.add('active');
    content.classList.add('active');
}