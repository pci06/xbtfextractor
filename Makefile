LIBSQUISH=/home/xbmc/tmp/libsquish/
CXX =g++
CXXFLAGS =-Wall -g -I$(LIBSQUISH)
LDFLAGS= -L$(LIBSQUISH)


INCLUDES = xbtf.h
SOURCES = main.cpp xbtf.cpp

OBJECTS = $(SOURCES:.cpp=.o)
EXECUTABLE = xbtfextractor

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(INCLUDES) $(OBJECTS) 
	$(CXX) $(LDFLAGS) -o $@ $(OBJECTS)  -lpthread -llzo2 -ljpeg -lpng -lgif -lsquish

clean:
	rm *.o $(EXECUTABLE); $(CTAGS)

.cpp.o:
	$(CXX) $(CXXFLAGS) -c -o $@ $<

