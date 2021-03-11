
if (document.readyState !== 'loading')
    init();
else
    document.addEventListener('DOMNodeInserted', init);

document.addEventListener('DOMNodeRemoved', init);

function init () {
    // Remove duplicates in courses
    var events = document.getElementsByClassName("event");
    try {
    for (var i = 0; i < events.length; i++) {
       let x = events.item(i).childNodes[2].innerText;
       if ( x == "TH:A-942" || x == "TH:A-949" || x == "TH:A-1435" || x == "TH:A-1447"  )
         events.item(i).style.display = "none"
    }
    }
    catch (exc) {}
    
    // Remove duplicates in Moodle
    var blocks = document.getElementsByClassName("half");
    for (var i = 0; i < blocks.length; i++) {
        let x = blocks.item(i).childNodes[0].childNodes[0].childNodes[2].childNodes[0].childNodes[1].innerText;
        if ( x == "TH:A-942" || x == "TH:A-949" || x == "TH:A-1435" || x == "TH:A-1447" ) {
            blocks.item(i).style.display = "none"
            blocks.item(i).previousSibling.classList.add('regular');
        }
    }
}
