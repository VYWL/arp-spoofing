LDLIBS=-lpcap

all: send-arp-test

send-arp-test: main.o arphdr.o ethhdr.o ip.o mac.o functions.o
	$(LINK.cc) $^ $(LOADLIBES) $(LDLIBS) -g -o  $@

clean:
	rm -f send-arp-test *.o
