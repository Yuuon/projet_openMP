CFLAGS=-Wall -std=c99 -g 
WORK= ver_openmp
OPENMP= -fopenmp

.PHONY: all clean

all: $(WORK)
 
ver_openmp: dijkstra_seq2.o
	$(CC) $(CFLAGS) $(LFLAGS) $(OPENMP) -o $@ $^ 

clean:
	rm -f $(WORK) *.o
