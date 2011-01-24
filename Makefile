# Copyright (C) 2011 Ian Zimmerman <itz@buug.org>

# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the conditions spelled out in
# the file LICENSE are met.

prefix=/usr/local
exec_prefix=$(prefix)
bindir=$(exec_prefix)/bin
libdir=$(exec_prefix)/lib

SCRIPTS = aectl aectl-save aectl-load eq
LIBS = aectl.sh

install :
	./mkinstalldirs $(bindir) $(DESTDIR)$(libdir)
	./install-sh $(SCRIPTS) $(DESTDIR)$(bindir)
	./install-sh -m 644 $(LIBS) $(DESTDIR)$(libdir)
