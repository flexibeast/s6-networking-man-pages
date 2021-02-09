MANPATH ?= /usr/share/man
man1 = $(MANPATH)/man1/
man7 = $(MANPATH)/man7/

man1_targets = \
	minidentd.1 \
	s6-clockadd.1 \
	s6-clockview.1 \
	s6-getservbyname.1 \
	s6-ident-client.1 \
	s6-sntpclock.1 \
	s6-taiclock.1 \
	s6-taiclockd.1 \
	s6-tcpclient.1 \
	s6-tcpserver.1 \
	s6-tcpserver-access.1 \
	s6-tcpserver4.1 \
	s6-tcpserver4-socketbinder.1 \
	s6-tcpserver4d.1 \
	s6-tcpserver6.1 \
	s6-tcpserver6-socketbinder.1 \
	s6-tcpserver6d.1 \
	s6-tlsc.1 \
	s6-tlsc-io.1 \
	s6-tlsclient.1 \
	s6-tlsd.1 \
	s6-tlsd-io.1 \
	s6-tlsserver.1 \
	s6-ucspitlsc.1 \
	s6-ucspitlsd.1

man7_targets = \
	s6-tls.7

all: install

install:
	install -m 644 $(man1_targets) $(man1)
	install -m 644 $(man7_targets) $(man7)

uninstall:
	cd $(man1); rm -f $(man1_targets)
	cd $(man7); rm -f $(man7_targets)

.PHONY: all install uninstall
