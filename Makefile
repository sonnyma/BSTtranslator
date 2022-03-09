all: td

td: testDriver.o WordPair.o ElementAlreadyExistsException.o ElementDoesNotExistException.o EmptyDataCollectionException.o BST.h BSTNode.h
	g++ -Wall -o td testDriver.o WordPair.o ElementAlreadyExistsException.o ElementDoesNotExistException.o EmptyDataCollectionException.o

testDriver.o: testDriver.cpp
	g++ -Wall -c testDriver.cpp 
		
WordPair.o: WordPair.h WordPair.cpp
	g++ -Wall -c WordPair.cpp

ElementDoesNotExistException.o: ElementDoesNotExistException.h ElementDoesNotExistException.cpp
	g++ -Wall -c ElementDoesNotExistException.cpp

ElementAlreadyExistsException.o: ElementAlreadyExistsException.h ElementAlreadyExistsException.cpp
	g++ -Wall -c ElementAlreadyExistsException.cpp
		
EmptyDataCollectionException.o: EmptyDataCollectionException.h EmptyDataCollectionException.cpp
	g++ -Wall -c EmptyDataCollectionException.cpp

clean:
	rm -f td *.o