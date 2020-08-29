// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.

function redirectToWhatsapp(){
    let targetNumber = $("#targetNumber").val().replace(/\s+/g, '');
    window.location.href = "https://api.whatsapp.com/send?phone=" + targetNumber;
}