#include <iostream>

#define LOG(x)	std::cout << x << std::endl


// We need to pass the variable as reference.
// if not "int value" will create a copy of the variable instead of changing it
void IncrementUsingPtr(int* value)
{
	// because value is a pointer it needs to be dereferenced by using "*value++"
	
	// This is wrong because it increments first (the memory address) and then dereference
	//*value++;
	// This is doing the dereference first and then increment
	//(*value)++

	(*value)++;
}

void IncrementUsingReference(int& value)
{
	value++;
}


int main()
{
	int a = 5;
	
	// int* b = &a (previous tutorial about pointers)
	// this is an int pointer "int*" that gets the memory address of a using "&a"
	
	// int& the & is part of the type
	// the "ref" variable is just an alias to "a"
	int& ref = a;
	
	// setting "ref" to 2, means "a=2"
	ref = 2;
	LOG(a);

	// The Increment function is needs a pointer.
	// This means to pass "a" we do need the address of "a" using "&a"
	IncrementUsingPtr(&a);
	LOG(a);

	IncrementUsingReference(a);
	LOG(a);

	// Watch out with setting ref, you CAN'T modify its value (swap)
	// Example
	int aa = 5;
	int bb = 8;
	
	int& ref1 = aa;	// = aa = 5 and bb = 8
	ref1 = bb;		// this sets "aa" to the value of "bb". aa = 8 and bb = 8

	// Let's make ref2 a pointer and set it to the memory address of "aa"
	int* ref2 = &aa;
	// Dereference the pointer "ref2" and then set it to 2,  "aa" will be 2 (was 5)
	*ref2 = 2;
	// Set pointer to the memory address of "bb"
	ref2 = &bb;
	// Dereference the pointer "ref2" and then set it to 1,  "bb" will be 1 (was 8)
	*ref2 = 1;

	LOG(aa);
	LOG(bb);


	std::cin.get();
}