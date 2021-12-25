function classname() {
    var dom = document.getElementById("form1");
    var size = dom.class.length;

    for(var i=0; i<size; i++) {
        if(dom.class[i].checked) {
            sem = dom.class[i].value;
            break;
        }
    }

    switch (sem) {
        case '1':
            alert('FIRST SEM');
            break;

        case '3':
            alert('THIRD SEM');
            break;

        case '5':
            alert('FIFTH SEM');
            break;
    
        default:
            break;
    }
}
