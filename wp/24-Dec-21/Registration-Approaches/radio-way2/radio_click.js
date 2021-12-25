function planeChoice (plane) {
    // produce an alert message about the chosen airplane
    switch (plane) {
        case 152:
            alert("A small two-place airplane for flight training")
            break;
        case 172:
            alert("The smaller of two four-place airplanes");
            break;
        case 182:
            alert("The larger of two four-place airplanes");
            break;
        case 210:
            alert("A six-place high-performance airplane");
        default:
            alert("Error in JS function planeChoice");
            break;
    }
}
