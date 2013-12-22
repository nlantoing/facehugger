install:
	git submodule init
	git submodule update

update:
	git submodule update

debug:
	cat submodules/ajax-service-helper/service.js > facehugger.min.js
	cat facehugger.js >> facehugger.min.js
