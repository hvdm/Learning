#include <iostream>
// WHat is an array
// An array is a collection of elements, a bunch of things in a particilair order
// 

class Entity
{
public:
	int example[5];

	Entity()
	{
		for (int i = 0; i < 5; i++)
			example[i] = 2;

	}
};


int main()
{
	// Create an array:    type name[qty]
	int  example[5];  

	// Access one element starting with 0 as the first
	example[0] = 2;
	example[4] = 4;

	// print index 0 and 4 of the array
	std::cout << example[0] << std::endl;
	std::cout << example[4] << std::endl;

	for (int i = 0; i < 5; i++)
	{
		example[i] = i;
	}

	// Create an variable (int pointer) and give it the value of example
	int* ptr = example;

	// Set index 2 to 5
	example[2] = 5;
	// Set index 2 to 5. same but now with a pointer
	// use ptr as starting address and offset it with 2 (2 int's is 8 bytes)
	// then dereference it with the *
	*(ptr + 2) = 6;


	// Create an array:    type name[qty]
	// This is created on the stack and gets destroyed when done
	int  example123[5] = { 1,2,3,4,5 };
	//for (int i = 0; i < 5; i++)
//		std::cout << example123[i] << std::endl;


	// Fill the array with 2
	for (int i = 0; i < 5; i++)
		example123[i] = 2;

	// This is created on the heap and needs to destroyed manually
	int* another = new int[5];

	// Fill the array with 3
	for (int i = 0; i < 5; i++)
		another[i] = 3;


	// Because the array is created with the square brackets [] it needs to be deleted the same way its created
	delete[] another;




	Entity e;




	std::cin.get();
}