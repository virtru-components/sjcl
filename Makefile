build: index.js cbc.js
	@component build --dev
	
update:
	@echo "Updating submodule"
	@git submodule init
	@git submodule update
	@git submodule foreach git submodule init
	@git submodule foreach git submodule update

index.js: src/sjcl.js src/component.json
	@cd src; ./configure --with-all; make
	@cp src/sjcl.js index.js

