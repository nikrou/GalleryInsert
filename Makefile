DIST=.dist
PLUGIN_NAME=$(shell basename `pwd`)
VERSION=$(shell grep Version _define.php | cut -d"'" -f2)
TARGET=../target

default:;

config: clean manifest
	mkdir -p $(DIST)/$(PLUGIN_NAME)
	cp -pr _*.php CHANGELOG.md LICENSE MANIFEST README.md					\
	js inc locales media config.php popup.php tpl index.php $(DIST)/$(PLUGIN_NAME)/
	find $(DIST) -name '*~' -exec rm \{\} \;

dist: config
	cd $(DIST); \
	mkdir -p $(TARGET); \
	rm -f $(TARGET)/plugin-$(PLUGIN_NAME)-$(VERSION).zip; \
	zip -v -r9 $(TARGET)/plugin-$(PLUGIN_NAME)-$(VERSION).zip $(PLUGIN_NAME); \
	cd ..

manifest:
	@find ./ -type f|egrep -v '(.git|\*~|.gitignore|.dist|target|bin|.vscode|vendor|composer.*|phpstan.*|Makefile|rsync_exclude)'|sed -e 's/\.\///' -e 's/\(.*\)/$(PLUGIN_NAME)\/&/'> ./MANIFEST

clean:
	rm -fr $(DIST)
