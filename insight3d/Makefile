SOURCES=$(wildcard *.cpp)
OBJECTS=$(patsubst %.cpp,%.o,$(SOURCES))
DEBUG= -O3
ANN_INCLUDE= -I./ann_1.1.1/include/

all: insight3d

insight3d: $(OBJECTS) sift_detector
	g++ $(DEBUG) -o insight3d *.o `pkg-config --libs opencv libxml-2.0 sdl gtk+-2.0` ./sift/lib/libfeat.a $(AGARLIB) -llapack -lblas -lGL -lGLU ./sba/libsba.a ./ann_1.1.1/lib/libANN.a

sift_detector:
	make -C ./sift
	make -C ./ann_1.1.1 linux-g++
	make -C ./sba

%.o: %.cpp
	g++ $(DEBUG) -c `pkg-config --cflags opencv libxml-2.0 sdl gtk+-2.0` $(ANN_INCLUDE) $<

clean: 
	rm *.o
	rm ./insight3d


