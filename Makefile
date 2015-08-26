NOW := $(shell date +"%c" | tr ' :' '__')

install:
	cd _harp/
	npm install
	gulp

server:
	cd _harp/
	gulp

compile:
	NODE_ENV=production harp compile _harp ./

deploy:
	git add -A
	git commit -a -m "$(NOW)"
	git push -u origin gh-pages

