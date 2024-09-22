#include <iostream>

// Using a struct, members are public by default
// Using a class, members are private by default


struct Entity
{
	// When making x and y static they are no long class members
	static int x, y;

	void Print()
	{
		std::cout << x << ", " << y << std::endl;
	}
};

int Entity::x;
int Entity::y;

int main()
{
	// Create instance of the class 
	Entity e;
	e.x = 2;
	e.y = 3;

	// Create another instance of the class using an initializer
	// This no longer works when x and y are static.
	// Entity e1{ 5, 8 };
	Entity e1;
	e1.x = 5;
	e1.y = 8;

	// This causes both output for e and e1 having the same values of e1.
	// This is because they are shared and pointing to the same variable
	e.Print();
	e1.Print();
	std::cin.get();
}