CXX = g++
CXXFLAGS = -g -O3 -Wall -fPIC `root-config --cflags`
CXXFLAGS += -ansi -pedantic -Wextra -Wstrict-aliasing   -Wfloat-equal -Wcast-align   -Wno-long-long
ROOTLDFLAGS =  `root-config --glibs` 

TARGETS = Flip.o
BINARIES = $(TARGETS:.o=)

all: $(TARGETS) $(BINARIES)

%: %.o
	  $(CXX) $(ROOTLDFLAGS) $< -o $@

%.o: %.cc
	   $(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	   rm -f $(BINARIES) $(TARGETS)
