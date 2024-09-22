#include <iostream>

class Entity
{
public:
	int x;
	void Print() const { std::cout << "Hello!" << std::endl; }
};

class ScopedPtr
{
private:
	// Entity pointer
	Entity* m_Obj;
public:
	// Constructor 
	ScopedPtr(Entity* entity)
		: m_Obj(entity)
	{
	}

	// Destructor
	~ScopedPtr()
	{
		delete m_Obj;
	}

	// Overloading the arrow operator
	Entity* operator->()
	{
		return m_Obj;
	}
	// Overloading the const version of arrow operator
	const Entity* operator->() const
	{
		return m_Obj;
	}
};

struct Vector3
{
	// float is 4 bytes
	// x = offset 0 | y = offset 4 | x = offset 8
	float x, y, z;
};


int main()
{
	// Create object
	Entity e;
	// Calling Print works without issues
	e.Print();

	// if Entity is creating on the heap you wont be able to access print, ptr is just a pointer
	Entity* ptr = &e;
	//ptr.Print();

	// By dereferencing the pointer you can access it
	Entity& entity1 = *ptr;
	// Now the Print function works fine but needs an extra line of code
	entity1.Print();

	// To avoid this use the arrow operator
	// This references the Entity* in a normal entity type and then call print
	ptr->Print();

	// This works also for variables
	ptr->x = 2;

	// ------------------------------------------------------------

	const ScopedPtr entity2 = new Entity();
	// You can't use entity2. here to access Print()
	entity2->Print();

	// ------------------------------------------------------------

	((Vector3*)0)->x;


	std::cin.get();
}