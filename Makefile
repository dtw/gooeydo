# This is a Makefile for gooeydo

INSTALL=/bin/install -c
RM=/bin/rm
DESTDIR=
BINDIR=/usr/bin
MANDIR=/usr/man

install:
	$(INSTALL) -m 755 gooeydo $(DESTDIR)/$(BINDIR)/gooeydo
	$(INSTALL) -m 644 gooeydo.man $(DESTDIR)/$(MANDIR)/man1/gooeydo.1		
	$(INSTALL) -m 644 gooeydo.example $(DESTDIR)/etc/gooeydo.example

clean:
	$(RM) $(DESTDIR)/$(BINDIR)/gooeydo
	$(RM) $(DESTDIR)/$(MANDIR)/man1/gooeydo.1
	$(RM) $(DESTDIR)/etc/gooeydo.example

# vim:set ts=2 sw=2 noet:
