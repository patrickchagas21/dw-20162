// output
var msg = "lorem ipsum";
console.log(msg);
console.info(msg);
document.write(msg);
document.write(`<p>${msg}</p>`)
// window.document.write(`<p>${msg}</p>`);
alert(msg);
// window.alert(msg);
document.querySelector('#id-input').value = msg
// window.document.querySelector('#id-input').value = msg
document.querySelector('#id-outras-tags').innerHTML = msg
// window.document.querySelector('#id-outras-tags').innerHTML = msg

// input
// scanf C
var value = prompt('Digite seu nome');
// var value = window.prompt('Digite seu nome');
var value = document.querySelector('#id-input').value
// var value = window.document.querySelector('#id-input').value
var value = document.querySelector('#id-outras-tags').innerHTML
// var value = window.document.querySelector('#id-outras-tags').innerHTML
