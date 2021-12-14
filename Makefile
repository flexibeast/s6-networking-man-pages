DESTDIR  =
PREFIX   = /usr
MANPATH ?= $(PREFIX)/share/man
man7_dir = $(MANPATH)/man7
man8_dir = $(MANPATH)/man8

man7_targets = \
	s6-tls.7

man8_targets = \
	s6-clockadd.8 \
	s6-clockview.8 \
	s6-getservbyname.8 \
	s6-ident-client.8 \
	s6-sntpclock.8 \
	s6-taiclock.8 \
	s6-taiclockd.8 \
	s6-tcpclient.8 \
	s6-tcpserver.8 \
	s6-tcpserver-access.8 \
	s6-tcpserver4.8 \
	s6-tcpserver4-socketbinder.8 \
	s6-tcpserver4d.8 \
	s6-tcpserver6.8 \
	s6-tcpserver6-socketbinder.8 \
	s6-tcpserver6d.8 \
	s6-tlsc.8 \
	s6-tlsc-io.8 \
	s6-tlsclient.8 \
	s6-tlsd.8 \
	s6-tlsd-io.8 \
	s6-tlsserver.8 \
	s6-ucspitlsc.8 \
	s6-ucspitlsd.8

all:
	@echo "Nothing to be done. Ready for 'make install'."

install:
	cd man7; install -D -m 0644 -t ${DESTDIR}${man7_dir} $(man7_targets)
	cd man8; install -D -m 0644 -t ${DESTDIR}${man8_dir} $(man8_targets)

uninstall:
	cd $(man7_dir); rm -f $(man7_targets)
	cd $(man8_dir); rm -f $(man8_targets)

.PHONY: all install uninstall
