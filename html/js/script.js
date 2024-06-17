document.getElementById('PolForm').addEventListener('submit', function(e) {
    e.preventDefault();

    var fname = document.getElementById('fname').value;
    var lname = document.getElementById('lname').value;
    var field3 = document.getElementById('field3').value;
    var field4 = document.getElementById('field4').value;
    var field5 = document.getElementById('field5').value;
    var field6 = document.getElementById('field6').value;
    var field7 = document.getElementById('field7').value;
    var field8 = document.getElementById('field8').value;
    var field9 = document.getElementById('field9').value;

    emitNet('savePolSolli', { 
        fname: fname, 
        lname: lname,
        field3: field3,
        field4: field4,
        field5: field5,
        field6: field6,
        field7: field7,
        field8: field8,
        field9: field9
    });
});