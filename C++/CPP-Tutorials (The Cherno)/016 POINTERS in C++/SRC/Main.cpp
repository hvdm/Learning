#include <iostream>

// What are pointers
// A pointer is an integer that holds a memory address

#define LOG(x)	std::cout << x << std::endl;

int main()
{	// *** example below creates the data on the stack ***
	// Create an integer variable called "var" and give it a value of "8"
	int varName = 8;
	
	// the & in front returns the memory address of the int varName
	LOG(&varName);
	
	// Store the address of varName into a new variable called ptrName which is a pointer
	int* ptrName = &varName;

	// the * in front is dereferencing to access the data
	*ptrName = 10;

	LOG(varName);

	// *** example below creates the data on the heap ***

	// Create a charPtr with a size of 8 bytes
	// new char allocates memory and returns a pointer to the beginning of that block
	char* buffer = new char[8];
	
	// Fill a block of memory of 8 bytes with 0
	// buffer is the pointer to the begin of the block of memory
	memset(buffer, 0, 8);



	// *** example double pointers (a pointer to a pointer) ***
	// set doublePtr to the memory address of buffer
	char** doublePtr = &buffer;

	// Delete the array with [] since we created it with new char[8]
	delete[] buffer;

	std::cin.get();
}