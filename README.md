facehugger
==========
Prevent full page refresh on navigation.

A bit ugly, and will never replace a good client framework but this will do the work for peoples which don't have time/money/motivation to migrate their project.

Install
-------
    make install build
Build the facehugger.min.js file.

Usage
-----
    var fadeTransition = function(newDocument, type){
      // fadeOut #content
      // replace #content with newDocument.getElementById('content')
      // fadeIn new #content
    };

    var service = new Service();
    var facehugger = new Facehugger(service,'a:not([href^="http://"])',fadeTransition);

Will call the fadeTransition function with the new document and the type of call as parameters when a internal (well, not preceded by "http://") link is clicked or when the back or forward button is hit.