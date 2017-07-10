.PHONY: all install remove

all: install

install:
	cp allocnd /usr/local/bin/
	cp sshalloc /usr/local/bin/
	cp sshfree /usr/local/bin/
	cp allocn /usr/local/bin/
	mkdir -p /etc/allocnd
	cp 99-allocnd-reservations /etc/update-motd.d/

remove:
	rm -f /usr/local/bin/allocnd
	rm -f /usr/local/bin/sshalloc
	rm -f /usr/local/bin/sshfree
	rm -f /usr/local/bin/allocn
	rm -rf /run/allocnd
	rm -f /etc/update-motd.d/99-allocnd-reservations

