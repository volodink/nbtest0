all: clean buildlibs buildapp buildtest

clean:
	cd CopterLib && make clean
	cd googletest && make clean

buildlibs:
	cd CopterLib && make
	cd googletest && make

buildapp:
	cd BasicApplication && make

buildtest:
	cd TestApplication && make

test:
	cd TestApplication/dist/Debug/GNU-Linux && ./testapplication



