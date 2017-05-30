.PHONY: all install remove

all: install

install:
	cp allocnd /usr/local/bin/
	cp sshalloc /usr/local/bin/
	cp sshfree /usr/local/bin/
	cp allocn /usr/local/bin/
	mkdir -p /etc/allocnd

remove:
	rm -f /usr/local/bin/allocnd
	rm -f /usr/local/bin/sshalloc
	rm -f /usr/local/bin/sshfree
	rm -f /usr/local/bin/allocn
	rm -rf /etc/allocnd
	rm -rf /run/allocnd

