facehugger
==========

Prevent full page refresh on navigation.

A bit ugly, and will never replace a good client framework but this will do the work for people which don't have time/money/motivation to migrate their project.

Install
-------

    make install build

Build the facehugger.min.js file.

Usage
-----

    var service = new Service('myDomain.com');
    var facehugger = new Facehugger(service,'a.intern','#content');
    
Will replace the #content node by the one returned by the server from links with the intern class.

A function can be given as fourth argument to manually manage the #content replacement and build custom animations.

    var fadeTransition = function(old,new){
      //launch the fadeOut animation, replace old by new and then fadeIn
    };
    var facehugger = new Facehugger(service, '.intern', '#content', fadeTransition);
