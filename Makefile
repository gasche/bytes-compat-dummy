# this Makefile reuses the structure of the non-dummy version's
# Makefile, to ease maintenance and expose the same targets to the
# package manager; but here most of the rules do nothing

build: byte native

byte:

native:

install-byte: byte
	ocamlfind install bytes META

install-native: native
	$(MAKE) install-byte

install: install-native

uninstall:
	ocamlfind remove bytes

clean:
