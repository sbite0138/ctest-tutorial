CC  = g++
CFLAGS    =
TARGET 	= test main
SRCS    = main.cpp test.cpp
OBJS    = $(SRCS:.cpp=.o)
INCDIR  = -I.
LIBDIR  =  
LIBS    = 

# $(TARGET): $(OBJS)
# 	$(CC) -o $@ $^ $(LIBDIR) $(LIBS)
	
# $(OBJS): $(SRCS)
# 	$(CC) $(CFLAGS) $(INCDIR) -c $(SRCS)


main:
	$(CC) $(CFLAGS) $(INCDIR) main.cpp -o main

test:
	$(CC) $(CFLAGS) $(INCDIR) test.cpp -o test

clean:
	rm -rf $(OBJS) $(TARGET)