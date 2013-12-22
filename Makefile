NODE_PREFIX:= `npm prefix`
NODE_MODULE:= $(NODE_PREFIX)/node_modules
UGLIFY:= $(NODE_MODULE)/uglify-js/bin/uglifyjs

FILES= #empty
FILES+= submodules/ajax-service-helper/service.js
FILES+= facehugger.js

build:
	@${UGLIFY} ${FILES} > facehugger.min.js 

install:
	npm install uglify-js
	git submodule init
	git submodule update

update:
	git submodule foreach git pull
	git submodule update

debug:
	@cat submodules/ajax-service-helper/service.js > facehugger.min.js
	@cat facehugger.js >> facehugger.min.js
