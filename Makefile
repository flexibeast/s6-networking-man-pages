MANPATH ?= /usr/share/man
man1 = $(MANPATH)/man1/
man7 = $(MANPATH)/man7/

man1_targets = \
	s6-clockadd.1 \
	s6-clockview.1

man7_targets = \
	s6-tls.7

all: build

build: clean prepare $(man1_targets) $(man7_targets)

%.1 : %.1.in
	mandoc -T man $< > man/man1/$@
	mandoc $< > mdoc/man1/$@

%.7 : %.7.in
	mandoc -T man $< > man/man7/$@
	mandoc $< > mdoc/man7/$@

clean:
	rm -rf man
	rm -rf mdoc

install-man:
	install -m 644 man/man1/* $(man1)
	install -m 644 man/man7/* $(man7)

install-mdoc:
	install -m 644 mdoc/man1/* $(man1)
	install -m 644 mdoc/man7/* $(man7)

prepare:
	mkdir -p man/man1
	mkdir -p man/man7
	mkdir -p mdoc/man1
	mkdir -p mdoc/man7

uninstall:
	cd $(man1); rm -f $(man1_targets)
	cd $(man7); rm -f $(man7_targets)

.PHONY: all build clean install-man install-mdoc prepare uninstall
