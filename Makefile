start: npm
	node node_modules/stylus/bin/stylus -w -c styles/essentials.styl --out css
	node node_modules/stylus/bin/stylus -w -c styles/pictograms.styl --out css

build: npm
	node node_modules/stylus/bin/stylus -c styles/essentials.styl --out css
	node node_modules/stylus/bin/stylus -c styles/pictograms.styl --out css

npm:
	npm install --quiet --production