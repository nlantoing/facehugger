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
    var service = new Service('myDomain.com');
    var facehugger = new Facehugger(service,'a.intern','#content');
    
Will replace the #content node with the one returned by requests from links with the intern class.
A function can be given as the fourth argument to manually manage the #content replacement and build custom animations.

    var fadeTransition = function(old,new){
      //fadeOut old
      //replace old by new
      //fadeIn new
    };
    var facehugger = new Facehugger(service, '.intern', '#content', fadeTransition);
