/*1. На странице есть элементы с CSS классом userinput. Написать код на JQuery, который прикрепит
обработчик onclick на все элементы. Функция обработки пустая.*/

$('.userinput').on('click', function() {
    
});

/*2. Найти все элементы на странице, которые вложены в элемент с id Block1 и имеют класс
userinput.*/

var elems = document.getElementById('Block1').getElementsByClassName('userinput');
console.log(elems);

/*3. Показать элемент с Id PopupDIV плавно всплывающий(fade) по центру окна браузера.*/

$(function() {
    $('#PopupDIV').hide().fadeIn(3000);
})
