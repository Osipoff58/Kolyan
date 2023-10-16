.PHONY: all debug release clean

RELEASE_FLAGS = -O2 -Wall -DNDEBUG
DEBUG_FLAGS   = -g -O0 -Wall
RELEASE_EXEC  = calculator
DEBUG_EXEC    = calculator-dbg
SOURCE        = calculator.cpp

all: debug release

debug: $(DEBUG_EXEC)

$(DEBUG_EXEC): calculator.cpp
	g++ $(DEBUG_FLAGS) calculator.cpp -o $(DEBUG_EXEC) 

release: $(RELEASE_EXEC)

$(RELEASE_EXEC): calculator.cpp
	g++ $(RELEASE_FLAGS) calculator.cpp -o $(RELEASE_EXEC)

clean:
	rm -f $(RELEASE_EXEC) $(DEBUG_EXEC)
