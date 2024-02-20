var literature = document.getElementById('literature_option');
var foreign = document.getElementById('foreign_option');
var economic = document.getElementById('economic_option');
var children = document.getElementById('children_option');
var other = document.getElementById('other_option');

var literature_content = document.getElementById('literature_content');
var foreign_content = document.getElementById('foreign_content');
var economic_content = document.getElementById('economic_content');
var children_content = document.getElementById('children_content');
var other_content = document.getElementById('other_content');
literature_content.classList.add('active');

literature.addEventListener('click', function(){
    displayContent(literature, literature_content);
});
foreign.addEventListener('click', function(){
    displayContent(foreign, foreign_content);
});
economic.addEventListener('click', function(){
    displayContent(economic, economic_content);
});
children.addEventListener('click', function(){
    displayContent(children, children_content);
});
other.addEventListener('click', function(){
    displayContent(other, other_content);
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
