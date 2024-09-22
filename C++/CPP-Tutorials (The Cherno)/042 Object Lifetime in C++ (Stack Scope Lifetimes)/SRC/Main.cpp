#include <iostream>

class Entity
{
private:
	//int x; // this is created on the heap, when this class dies, the variable dies.
public:
	// Constructor
	Entity()
	{
		std::cout << "Created Entity!" << std::endl;
	}
	// Destructor
	~Entity()
	{
		std::cout << "Destroyed Entity!" << std::endl;
	}
};

int* CreateArrayStack()
{
	// Create an Array of 50 elements on the stack 
	int array[50];

	// be aware: returning the aray is returning the pointer to that stack memory
	return array; 
	// Calling this function will FAIL
}

int* CreateArrayHeap(int* array)
{
	// Create the array on the heap
	for (int i = 0; i < 50; i++)
		array[i] = i * 10;
	return array;
}

class ScopedPtr
{
private:
	Entity* m_Ptr;
public:
	// Constructor that takes an Entity pointerand assign it to m_Ptr
	ScopedPtr(Entity* ptr)
		: m_Ptr(ptr)
	{
	}

	// Destructor, on delete it will delete the m_Ptr
	~ScopedPtr()
	{
		delete m_Ptr;
	}
};

int main()
{
	// Empty scopes
	{

	}

	// Another scope
	if (true)
	{

	}

	std::cout << "============================================================" << std::endl;

	// Scope created on the stack
	{
		// Entity is created on the stack
		Entity e;

	} // As soon as you reach this point, you'r out of scope end the class dies
	std::cout << "============================================================" << std::endl;

	// Scope created on the heap
	{
		// Entity is created on the stack
		Entity* e = new Entity();

	} // As soon as you reach this point, you'r out of scope but Entity is still alive

	std::cout << "============================================================" << std::endl;

	CreateArrayStack();

	int* array = new int[50];
	CreateArrayHeap(array);
	for (int i = 0; i < 50; i++)
		std::cout << array[i] << std::endl;

	std::cout << "============================================================" << std::endl;

	// Scope created on the stack
	{
		// ScopedPtr is created on the stack
		ScopedPtr e = new Entity();

	} // As soon as you reach this point, you'r out of scope end the ScopedPtr dies



	std::cin.get();
}