var i = 2;

function ss() {
    if (i == 1) {
        location.href = "login.html";
    }
    i--;
    setTimeout("ss()", 1000);
}

setTimeout("ss()", 1000);