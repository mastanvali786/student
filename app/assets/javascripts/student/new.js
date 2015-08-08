


function displayDate() {
    document.getElementById("demo").innerHTML = Date();
}
function bigImg(x) {
    x.style.height = "64px";
    x.style.width = "64px";
}

function normalImg(x) {
    x.style.height = "32px";
    x.style.width = "32px";
}
function myFunction() {
    alert("click new student to enter a student");
}
function myfunction() {
    var x = document.getElementById("fname");
    x.value = x.value.toUpperCase();
}
function MyFunction(m) {

    m.style.background = '#E6E6E6';  
}

function SetFocus () {
	
  input.focus ();
}
function confirmInput() {
    student_name = $('#fname').val();
        alert("Hello " + student_name +" You will now be redirected to index");
    }