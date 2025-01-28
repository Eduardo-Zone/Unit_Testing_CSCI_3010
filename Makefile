CXX = g++  # the compiler
CXXFLAGS = -std=c++17 -Wall -Werror -Wpedantic # flags for the compiler (use c++17 standards, turn on all optional warnings); add -ggdb if you want to use gdb to debug!

# runs for "make all"
all: main

main: functions_to_implement.o test.o	#compile the object files into an executable output file "main"
	$(CXX) $(CXXFLAGS) test.cpp -o main

functions_to_implement.o: functions_to_implement.cpp
	$(CXX) $(CXXFLAGS) -c functions_to_implement.cpp

test.o: test.cpp	#-c to indicate NOT to make an executable, but to just compile and make an object file ("main.o")
	$(CXX) $(CXXFLAGS) -c test.cpp	

clean:	#include all targets here to remove and clean up past make's
	rm test.o functions_to_implement.o main