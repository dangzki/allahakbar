CC	= g++
CFLAGS	= -I.
objects = HelloWorld.o
output	= ./HelloWorld

%.o: %.cpp 
	$(CC) -c -o $@ $< $(CFLAGS)
HelloWorld: $(objects)
	$(CC) -o $(output) $^ $(CFLAGS)





.PHONY : clean
clean:
	rm $(objects) -rf
	rm $(output) -rf
